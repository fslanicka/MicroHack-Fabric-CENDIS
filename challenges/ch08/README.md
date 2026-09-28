# Ch08: Data Agent: Talk with your data
> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal
In this challenge, you will focus on the Data Agent, which allows you to build your own conversational Q&A systems using generative AI. The Fabric Data Agent uses LLMs to help users interact with their data naturally. It leverages Azure OpenAI Assistant APIs and behaves like an agent: processing user questions, determining the most relevant data source (Lakehouse, Warehouse, Power BI dataset, KQL databases), and invoking the appropriate tool to generate, validate, and execute queries.
This way, even people without technical expertise in AI or a deep understanding of the data structure can receive precise and context-rich answers.

During this challenge, you will define a new Data Agent and add specific instructions, examples, and guidance to fine-tune the Fabric Data Agent. This ensures that responses align with your needs and goals, allowing everyone to engage with data more effectively.

By the end of this challenge, the Data Agent will be ready to be consumed via the Python SDK, Azure AI Foundry, Microft Copilot Studio, and Copilot in Power BI.


## Actions
- Create new Data Agent
- Add Data sources:
    - Semantic model: GreenTaxi 
        - Tables:
            - dimLocations
            - dimpaymenttype
            - dimratecode
            - dimvendor
            - green_discount
    - Lakehouse: goldcurated
        - Tables:
            - dimLocations
            - reviewLocations
- Test questions:
    - What were the most common pickup locations for green taxi rides in 2023?
    - On which weekday do people travel from the airport the most?¨
    - How many rides were in Boston?
    - How many rides were there in 2025?
    - Show me the top 3 districts in New York with the best accommodation.
    - Show me the districts where the most passengers moved from.
    - Show me the districts where most passengers moved from, and what reviews, sentiments, and key topics you know about these districts.
- Tune Data Agent via Agent instructions (System Prompt) and Data source instructions for above questions
- Publish Data Agent
- Consume Data Agent via Copilot (Home) in Power BI or PythonSDK

## Success Criteria
- Data Agent exists and is able to answer questions about data in Semantics model and Lakehouse.
- Data Agent is available via Python SDK or Copilot (Home) in Power BI
- Data Agent can answer questions:
    - Question: What were the most common pickup locations for green taxi rides in 2023?
        - Answer: East Harlem North; East Harlem South; Forest Hills; Central Harlem; ...

    - Question: On which weekday do people travel from the airport the most?
        - Agent asks: ... could you please specify which airport you are interested in—JFK or EWR?
            - User reply: JFK
        - Answer: ... most green taxi trips originating from JFK airport was Monday
    
    - Question: How many rides were in Boston?
        - Answer: I am sorry, currently I have taxi data only for New York.

    - Question: How many rides were there in 2025?
        - Answer: I am sorry, currently I have taxi data only for 2015 and 2023.

    - Question: Show me the top 3 districts in New York with the best accommodation.
        - Answer: Bronx, Queens, Brooklyn

    - Question: Show me the districts where the most passengers moved from.
        - Answer: In 2015: Williamsburg (North Side), Brooklyn had the highest number of passengers. In 2023: East Harlem North, Manhattan had the highest number of passengers.

    - Question: Show me the districts where most passengers moved from, and what reviews, sentiments, and key topics you know about these districts.
        - Answer: 
            - Williamsburg (North Side), Brooklyn (2015); Review: Williamsburg’s North Side is hip, walkable, and full of exciting restaurants, parks, bars, and creative boutiques. Proximity to the waterfront and L train is unmatched, and the nightlife is legendary; Sentiment: Positive; Key Topics: hip, walkable, restaurants, parks, bars, creative boutiques, waterfront proximity, L train access, nightlife.
            - East Harlem North, Manhattan (2023); Review: East Harlem North has affordable rents, bustling Latin and Italian communities, and plenty of local eateries. Cheaper than other Manhattan spots with an authentic neighborly spirit; Sentiment: Positive; Key Topics: affordable rents, Latin community, Italian community, local eateries, pricing, neighborly spirit.

**Data Agent:**
![Picture](/images/ch08/ch08-success1.png)

**Copilot (Home) in Power BI:**
![Picture](/images/ch08/ch08-success2.png)

## Solution - Spoilerwarning
> Solutions steps for [Challenge 08](/solutions/ch08/ch08-solution.md)

## Next challenge is:
>[Extra exercise](/exercise-extra/extra.md)

