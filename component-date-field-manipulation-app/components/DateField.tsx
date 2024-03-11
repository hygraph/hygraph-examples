import { useFieldExtension, Wrapper } from "@graphcms/app-sdk-react";
import { useEffect, useState } from "react";

const DateField = () => {
    const { value, onChange, form } = useFieldExtension();

    useEffect(() => {
        console.log("value:", value);
        let unsubscribe: any;

        form.subscribeToFieldState(
            "release[date]",
            (state) => {
                console.log("release[date] value:", state.value);
                onChange(state.value);
            },
            {
                value: true,
            }
        ).then((fieldUnsubscribe) => (unsubscribe = fieldUnsubscribe));

        return () => {
            unsubscribe?.();
        };
    }, [value]);

    return (
        <>
            <div className="form-group">
                <label>Release Date</label>
                <input
                    type="date"
                    name="date"
                    id="date"
                    defaultValue={value}
                    value={value || ""}
                    disabled
                />
            </div>
        </>
    );
};

const DateFieldUix = () => {
    return (
        <Wrapper>
            <DateField />
        </Wrapper>
    );
};

export default DateFieldUix;
