export const Loader = () => (
  <div style={{ width: "50%", height: "50%" }}>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 100 100"
      preserveAspectRatio="xMidYMid"
      display="block"
    >
      <title>Loading...</title>
      <g fill="#06092b">
        <circle cx="60" cy="50" r="4">
          <animate
            attributeName="cx"
            repeatCount="indefinite"
            dur="1s"
            values="95;35"
            keyTimes="0;1"
            begin="-0.67s"
          />
          <animate
            attributeName="fill-opacity"
            repeatCount="indefinite"
            dur="1s"
            values="0;1;1"
            keyTimes="0;0.2;1"
            begin="-0.67s"
          />
        </circle>
        <circle cx="60" cy="50" r="4">
          <animate
            attributeName="cx"
            repeatCount="indefinite"
            dur="1s"
            values="95;35"
            keyTimes="0;1"
            begin="-0.33s"
          />
          <animate
            attributeName="fill-opacity"
            repeatCount="indefinite"
            dur="1s"
            values="0;1;1"
            keyTimes="0;0.2;1"
            begin="-0.33s"
          />
        </circle>
        <circle cx="60" cy="50" r="4">
          <animate
            attributeName="cx"
            repeatCount="indefinite"
            dur="1s"
            values="95;35"
            keyTimes="0;1"
            begin="0s"
          />
          <animate
            attributeName="fill-opacity"
            repeatCount="indefinite"
            dur="1s"
            values="0;1;1"
            keyTimes="0;0.2;1"
            begin="0s"
          />
        </circle>
      </g>
      <g transform="translate(-15)" fill="#f231a5">
        <path d="M50 50V20a30 30 0 000 60z" />
        <path d="M50 50H20a30 30 0 0060 0z">
          <animateTransform
            attributeName="transform"
            type="rotate"
            repeatCount="indefinite"
            dur="1s"
            values="0 50 50;45 50 50;0 50 50"
            keyTimes="0;0.5;1"
          />
        </path>
        <path d="M50 50H20a30 30 0 0160 0z">
          <animateTransform
            attributeName="transform"
            type="rotate"
            repeatCount="indefinite"
            dur="1s"
            values="0 50 50;-45 50 50;0 50 50"
            keyTimes="0;0.5;1"
          />
        </path>
      </g>
    </svg>
  </div>
);
