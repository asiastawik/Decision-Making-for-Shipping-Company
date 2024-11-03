# Decision-Making for Shipping Company Selection

## Project Overview

This project aims to assist a manufacturing company in selecting the best shipping company for transferring product X from its warehouse to the destination market Y. By employing the Best-Worst method for criteria evaluation, we will calculate the weights of various selection criteria, assess the consistency of pairwise comparisons, and identify the most suitable shipping alternative.

## Problem Description

### Criteria for Evaluation

The following criteria have been identified as relevant for evaluating shipping companies:

- **c1**: Cost
- **c2**: Transit Time
- **c3**: Accessibility
- **c4**: Security of Goods

### Alternatives

Five shipping companies have been evaluated based on the above criteria, with their ratings on a scale from 0 to 100 presented in the following table:

| Criteria/Company | c1 (Cost) | c2 (Transit Time) | c3 (Accessibility) | c4 (Security) |
|-------------------|-----------|-------------------|--------------------|----------------|
| a1                | 40        | 90                | 30                 | 95             |
| a2                | 15        | 95                | 25                 | 100            |
| a3                | 90        | 15                | 80                 | 30             |
| a4                | 70        | 30                | 60                 | 40             |
| a5                | 60        | 50                | 40                 | 60             |

### Importance of Criteria

The company has identified the following importance levels for the criteria:
- **Most Important**: c4 (Security)
- **Least Important**: c3 (Accessibility)

### Pairwise Comparisons

Pairwise comparison tables for the most important and least important criteria are provided below:

#### Table 2: Best Criterion

| Criteria           | c1 (Cost) | c2 (Transit Time) | c3 (Accessibility) | c4 (Security) |
|--------------------|-----------|-------------------|--------------------|----------------|
| **Best Criterion**  | c4        | 4                 | 2                  | 8              |

#### Table 3: Worst Criterion

| Criteria           | c1 (Cost) | c2 (Transit Time) | c3 (Accessibility) | c4 (Security) |
|--------------------|-----------|-------------------|--------------------|----------------|
| **Worst Criterion** | c3        | 2                 | 5                  | 1              |

## Objectives

The project aims to address the following questions:

1. **Weights of the Criteria**: Utilize the Best-Worst method to calculate the weights of the selection criteria based on the pairwise comparisons.
2. **Consistency Ratio**: Calculate the Consistency Ratio of the pairwise comparisons to ensure the reliability of the judgments.
3. **Best Alternative**: Identify the best shipping alternative based on the calculated weights and ratings.

## Methodology

### 1. Best-Worst Method

The Best-Worst method will be employed to derive the weights of the criteria. This involves:
- Analyzing the pairwise comparisons from Tables 2 and 3.
- Applying the method to calculate the relative weights for each criterion.

### 2. Consistency Ratio Calculation

The Consistency Ratio will be computed to evaluate the consistency of the pairwise comparisons. A low ratio indicates reliable comparisons, while a high ratio suggests the need for reevaluation.

### 3. Evaluation of Alternatives

Once the criteria weights are established, each alternative's overall score will be calculated. The shipping company with the highest score will be identified as the best alternative.

## Implementation in MATLAB

The project is implemented in MATLAB, utilizing its computational capabilities to:
- Calculate the weights of the criteria using the Best-Worst method.
- Compute the Consistency Ratio.
- Evaluate the alternatives based on the established criteria weights.

## Expected Outcomes

The project aims to deliver:
- The weights of the evaluation criteria calculated using the Best-Worst method.
- The Consistency Ratio of the pairwise comparisons to assess their reliability.
- Identification of the best shipping company for collaboration based on the weighted evaluation.

## Future Enhancements

- **Sensitivity Analysis**: Perform sensitivity analysis to evaluate how changes in criteria weights affect the selection of the best alternative.
- **Broader Criteria Inclusion**: Explore additional criteria that may impact the decision-making process, such as customer reviews or delivery reliability.
- **User-Friendly Interface**: Develop an interactive interface for decision-makers to input their preferences and receive recommendations.

## Conclusion

This project demonstrates a systematic approach to decision-making in selecting a shipping company by utilizing the Best-Worst method. By calculating criteria weights and assessing alternatives, the project provides valuable insights into optimizing logistics strategies for the manufacturing company.
