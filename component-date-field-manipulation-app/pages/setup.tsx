import { useApp, Wrapper } from "@graphcms/app-sdk-react";

const Install = () => {
    const { updateInstallation } = useApp();
    return (
        <>
            <h3>Gamescom App</h3>
            <button
                onClick={() => {
                    updateInstallation({ status: "COMPLETED" });
                }}
            >
                Save Settings
            </button>
        </>
    );
};

export default function SetupPage() {
    return (
        <Wrapper>
            <Install />
        </Wrapper>
    );
}
