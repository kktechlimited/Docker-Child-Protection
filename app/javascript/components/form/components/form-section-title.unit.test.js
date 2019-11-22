import { setupMountedComponent } from "test";

import FormSectionTitle from "./form-section-title";
import { fromJS } from "immutable";
import { FormSectionRecord } from "components/form/records";
import { expect } from "chai";

describe("<Form /> - components/<FormSectionTitle />", () => {
  it("should not render title if name not set on form section", () => {
    const formSection = FormSectionRecord({ unique_id: "form_section" });
    const { component } = setupMountedComponent(FormSectionTitle, {
      formSection
    });

    expect(component.find("h1")).to.not.have.lengthOf(1);
  });

  it("should render title if name set on form section", () => {
    const formSection = FormSectionRecord({
      unique_id: "form_section",
      name: "Form Section Title"
    });
    const { component } = setupMountedComponent(FormSectionTitle, {
      formSection
    });

    expect(component.find("h1")).to.have.lengthOf(1);
  });
});
