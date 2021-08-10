function inPercent(value, total) {
  return (value / total) * 100;
}

function inNumber(percent, total) {
  if (percent > 100) {
    throw Error("Invalid number, percent can't be more than 100");
  }
  return (percent / 100) * total;
}

/**
 * if any of the conditions are true, the position
 * is outside the containment. As we want to know
 * if the position is inside the container we
 * reverse the result of the set of conditions.
 */
const insideContainment = (x, y, containment) => {
  return !(
    x < containment.x ||
    x > containment.x + containment.width ||
    y < containment.y ||
    y > containment.y + containment.height
  );
};

const makeFocalPoint = (
  initialPos = { x: 50, y: 50 },
  onChange = function () {
    return undefined;
  },
  isReadOnly = false,
) => {
  const originalImage = document.getElementById("originalImage");
  const coords = document.getElementById("coords");
  const dot = document.querySelector(".focal-point .dot");
  const previews = document.querySelectorAll("[class*='preview-'] img");
  let pos = initialPos;
  let isDown = false;

  const getImgRect = () => originalImage.getBoundingClientRect();

  const updatePosition = (e) => {
    const { x: imgX, y: imgY, height, width } = getImgRect();
    const x = Math.round(inPercent(e.clientX - imgX, width));
    const y = Math.round(inPercent(e.clientY - imgY, height));

    if (x <= 0) {
      pos.x = 0;
    } else if (x >= 100) {
      pos.x = 100;
    } else {
      pos.x = x;
    }

    if (y <= 0) {
      pos.y = 0;
    } else if (y >= 100) {
      pos.y = 100;
    } else {
      pos.y = y;
    }
  };

  const updateDot = () => {
    const { width, height } = getImgRect();
    dot.style.left = inNumber(pos.x, width) - dot.offsetWidth / 2 + "px";
    dot.style.top = inNumber(pos.y, height) - dot.offsetHeight / 2 + "px";
  };

  const updateCoords = () => {
    coords.innerText = JSON.stringify(pos);
  };

  const updatePreviews = () => {
    previews.forEach((preview) => {
      preview.style.objectPosition = `${pos.x}% ${pos.y}%`;
    });
  };

  const insideImage = (e) => {
    return insideContainment(e.clientX, e.clientY, getImgRect());
  };

  const handleImageDown = (e) => {
    if (!insideImage(e)) {
      return;
    }

    isDown = true;
    updatePosition(e);
    updateDot();
    updatePreviews();
  };

  const handleImageUp = () => {
    isDown = false;
    onChange(pos);
  };

  const handleDotMove = (e) => {
    if (!isDown) {
      return;
    }

    updatePosition(e);
    updateDot();
    updatePreviews();
    updateCoords();
  };

  const handleWindowResize = () => {
    updateDot();
    updatePreviews();
  };

  const init = () => {
    window.addEventListener("resize", handleWindowResize);

    if (!isReadOnly) {
      const observer = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          if (mutation.type === "attributes") {
            originalImage.addEventListener(
              "load",
              () => {
                updateDot();
                updatePreviews();
              },
              { once: true },
            );
          }
        });
      });
      observer.observe(originalImage, { attributeFilter: ["src"] });

      document.addEventListener("mousedown", handleImageDown, true);
      document.addEventListener("mouseup", handleImageUp, true);
      document.addEventListener("mousemove", handleDotMove, true);
    }

    updateDot();
    updatePreviews();
  };

  init();
};
