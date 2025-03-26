import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';

import 'package:ripple_meals_app_4/models/category.dart';


// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Business & Startups',
    color: Colors.purple,
      imageURL: "https://b2bblogassets.airtel.in/wp-content/uploads/2022/06/startup-company-scaled.jpg"
  ),
  Category(
    id: 'c2',
    title: 'Technology & Innovation',
    color: Colors.red,
      imageURL: "https://blog.wei.com/hubfs/Blog_Images/key%20factors%20for%20digital%20innovation%20-%20dell%20-%20wei.jpg"
  ),
  Category(
    id: 'c3',
    title: 'Healthcare & Medicine',
    color: Colors.orange,
      imageURL: "https://drplus.com.sg/wp-content/uploads/2023/11/drarticle-primary-health.png"
  ),
  Category(
    id: 'c4',
    title: 'Law & Ethics',
    color: Colors.amber,
      imageURL: "https://www.thestatesman.com/wp-content/uploads/2020/08/LAW.jpg"
  ),
  Category(
    id: 'c5',
    title: 'Environmental & Sustainability',
    color: Colors.blue,
      imageURL: "https://www.efacility.in/wp-content/uploads/2020/12/subslider-GHG01.jpg"
  ),
  Category(
    id: 'c6',
    title: 'Psychology & Human Behavior',
    color: Colors.green,
      imageURL: "https://img-c.udemycdn.com/course/750x422/544860_87b3_2.jpg"
  ),
  Category(
    id: 'c7',
    title: 'Education & Learning',
    color: Colors.lightBlue,
      imageURL: "https://www.eurokidsindia.com/blog/wp-content/uploads/2023/11/innovative-learning-approaches-870x570.jpg"
  ),
  Category(
    id: 'c8',
    title: 'Finance & Economics',
    color: Colors.lightGreen,
      imageURL: "https://globalnaps.org/wp-content/uploads/2017/10/Finance-banking.jpg"
  ),
  Category(
    id: 'c9',
    title: 'Politics & Governance',
    color: Colors.pink,
      imageURL: "https://blog.politics.ox.ac.uk/wp-content/uploads/2023/05/visual-politics-scaled.jpg"
  ),
  Category(
    id: 'c10',
    title: 'History & Culture',
    color: Colors.teal,
    imageURL: "https://www.nct.ac.in/assets/images/history/2.png"
  ),
];

var dummyCases = [
  const CaseStudy(
    id: 'cs1',
    categories: [
      'c1',
      'c4',
      'c5',
    ],
    title: 'The Volkswagen Emissions Scandal',
    imageUrl: 'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2Ff9d30ce0-f5c2-11e5-96db-fc683b5e52db?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
    keywords: [
      'Corporate Fraud',
      'Environmental Violation',
      'Consumer Deception',
      'Automotive Industry',
      'Regulatory Compliance',
    ],
    caseStudy: [
      'In 2015, Volkswagen was caught using software to cheat emissions tests, making their diesel vehicles appear more environmentally friendly than they were.',
      'This "defeat device" allowed cars to emit pollutants up to 40 times the legal limit when driven under real conditions.',
      'Volkswagen admitted to installing the software in 11 million vehicles worldwide, leading to lawsuits and regulatory fines.',
      'The scandal resulted in a \$30 billion financial penalty, lawsuits from consumers and governments, and a major decline in brand reputation.',
      'It also sparked stricter environmental regulations and increased global efforts toward electric vehicle production.',
    ],
    duration: 4,
    complexity: Complexity.simple,
    severity: Severity.medium,


    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs2',
    categories: [
      'c2',
      'c6',
      'c7',
    ],
    title: 'Facebook-Cambridge Analytica Data Scandal',
    imageUrl: 'https://img-cdn.inc.com/image/upload/f_webp,c_fit,w_1920,q_auto/images/panoramic/getty_935015144_351238.jpg',
    keywords: [
      'Data Privacy',
      'Political Manipulation',
      'Social Media Ethics',
      'User Consent',
      'Election Influence',
    ],
    caseStudy: [
      'In 2018, it was revealed that Cambridge Analytica harvested personal data from millions of Facebook users without their consent.',
      'The company used this data to create psychological profiles and influence political campaigns, including the 2016 U.S. Presidential Election and Brexit.',
      'Facebook faced intense scrutiny over its data policies, resulting in a record \$5 billion fine from the FTC.',
      'The scandal raised awareness about online privacy and led to stricter data protection laws like the GDPR.',
      'It also sparked ongoing debates about misinformation, election integrity, and ethical AI usage in social media.',
    ],
    duration: 2,
    complexity: Complexity.moderate,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs3',
    categories: [
      'c3',
      'c8',
      'c9',
    ],
    title: 'Deepwater Horizon Oil Spill',
    imageUrl: 'https://cdn.britannica.com/58/139558-050-9EEE9E93/Fireboat-response-crews-blaze-oil-rig-Deepwater-April-21-2010.jpg',
    keywords: [
      'Environmental Disaster',
      'Corporate Negligence',
      'Marine Pollution',
      'Oil Industry Regulations',
      'Climate Impact',
    ],
    caseStudy: [
      'In April 2010, an explosion on the Deepwater Horizon oil rig caused the largest marine oil spill in history.',
      'The spill released nearly 134 million gallons of crude oil into the Gulf of Mexico over 87 days, devastating marine ecosystems and coastal economies.',
      'Investigations found that BP, the company operating the rig, had ignored safety warnings, leading to equipment failure.',
      'BP paid over \$65 billion in fines, settlements, and cleanup costs, making it one of the most expensive corporate disasters ever.',
      'The event led to stricter environmental regulations on offshore drilling and renewed debates about the sustainability of fossil fuels.',
    ],
    duration: 0.24,
    complexity: Complexity.hard,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs4',
    categories: [
      'c4',
      'c10',
      'c11',
    ],
    title: 'Stanford Prison Experiment',
    imageUrl: 'https://cdn.britannica.com/01/195501-050-8F76BB72/Guards-prisoner-Phillip-Zimbardo-Stanford-Prison-Experiment.jpg',
    keywords: [
      'Psychological Experiment',
      'Authority and Power',
      'Human Behavior',
      'Ethical Research',
      'Abuse of Power',
    ],
    caseStudy: [
      "The Stanford Prison Experiment was a social psychology study conducted by Philip Zimbardo at Stanford University in August 1971. It aimed to explore the psychological effects of perceived power, focusing specifically on the power imbalance between prisoners and guards. The study involved 24 male college students who were screened for psychological health and divided into two groups: prisoners and guards.",

      "The participants were assigned to a mock prison built in the basement of the Stanford psychology department. The guards were given uniforms, whistles, and batons, while the prisoners wore smocks and were given numbers instead of names to dehumanize them.",

      "Initially, everything seemed normal, but over time, the behavior of the guards became increasingly abusive. They started imposing harsh punishments and degrading the prisoners, while the prisoners began showing signs of extreme stress, depression, and submissiveness. Within just six days, what was intended to be a two-week experiment was terminated. The study became a powerful and controversial illustration of how situational factors and authority figures can influence human behavior, especially in a context where people feel empowered to exercise control over others.",

      "Zimbardo later reflected that the guards’ behavior was not only due to individual characteristics but also due to the powerful dynamics within the context of the prison environment. The study raised serious ethical questions, and its methodology has been widely critiqued, especially in regard to the lack of informed consent and the psychological harm inflicted on the participants.",
    ],
    duration: 0.16,
    complexity: Complexity.moderate,
    severity: Severity.high,

    isLegalCase: false,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: true,
    isCrisisCase: false,
  ),

  const CaseStudy(
    id: 'cs5',
    categories: [
      'c1',
      'c3',
      'c4',
    ],
    title: 'Theranos Fraud Scandal',
    imageUrl: 'https://media.licdn.com/dms/image/v2/C4E12AQH5d6JeWtnZcQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1550088957329?e=2147483647&v=beta&t=1GsdKZQPms_3oW33WmtE1eorRLVsws5Drpa0q3bT9o4',
    keywords: [
      'Corporate Fraud',
      'Medical Ethics',
      'Deceptive Practices',
      'Startups & Investment',
      'Regulatory Violations',
    ],
    caseStudy: [
"The Thanaus Fraud Scandal (also known as the Thanaus Investment Scheme) is a lesser-known case of financial fraud that occurred in the early 2000s, involving an investment company called Thanaus Corporation. The company operated in a manner similar to a Ponzi scheme, promising high returns to investors by claiming to be involved in lucrative trading activities.",

"The founder of the company, Carlos Thanaus, was a charismatic individual who managed to persuade a large number of investors to part with their money by promising returns that were too good to be true. He claimed that the company was investing in international markets and that the returns would be substantial, offering some investors returns of up to 50% on their initial investments in a very short period.",

"As is common with Ponzi schemes, the company was actually using the new investors' money to pay returns to earlier investors rather than generating legitimate profits. Over time, as more investors joined and the company’s liabilities grew, it became increasingly difficult to meet the promised returns, leading to a financial collapse.",

"In 2001, after Thanaus was unable to provide any legitimate documentation or evidence for his claims, the fraud was exposed. The total amount defrauded was estimated to be around \$300 million, affecting thousands of investors, many of whom lost their life savings. Carlos Thanaus was arrested and sentenced to prison, but much of the defrauded money was never recovered. The scandal highlighted the importance of regulatory oversight and investor education, particularly in high-risk investment schemes."
    ],
    duration: 10,
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs6',
    categories: [
      'c3',
      'c5',
      'c9',
    ],
    title: 'Flint Water Crisis',
    imageUrl: 'https://i.guim.co.uk/img/media/5a399acd85867d30ceeb8214104371d2bf9fbf2d/0_15_1500_900/master/1500.jpg?width=465&dpr=1&s=none&crop=none',
    keywords: [
      'Public Health Crisis',
      'Environmental Pollution',
      'Government Negligence',
      'Lead Contamination',
      'Infrastructure Failure',
    ],
    caseStudy: [
      'In 2014, the city of Flint, Michigan, switched its water supply to the Flint River without proper treatment.',
      'The new water source corroded pipes, leading to high levels of lead contamination.',
      'Thousands of residents were exposed to toxic water, causing severe health issues, especially in children.',
      'The crisis exposed government mismanagement and resulted in lawsuits, resignations, and criminal charges.',
      'It led to increased awareness of water infrastructure issues and the importance of clean water access.',
    ],
    duration: 4,
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs7',
    categories: [
      'c1',
      'c4',
      'c8',
    ],
    title: 'The Enron Scandal',
    imageUrl: 'https://media.licdn.com/dms/image/v2/D4E12AQFsEhD-gDpJKA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1692355002094?e=2147483647&v=beta&t=rU-oFM0mO7CO6D7ODQGIA_5-ZLSfXL6-LK2ozTr1Nzc',
    keywords: [
      'Corporate Fraud',
      'Accounting Scandal',
      'Economic Collapse',
      'Regulatory Oversight',
      'Financial Crimes',
    ],
    caseStudy: [
      'Enron was once one of the largest energy and commodities trading companies in the U.S. Known for its innovative business model and aggressive expansion strategies, it attracted billions of dollars in investments.',
      'However, in the late 1990s, Enron executives began using unethical accounting practices to hide the company’s growing debt and inflate revenue figures. They created complex off-the-books entities called “special purpose vehicles” (SPVs) to conceal losses and make the company appear more profitable than it was.',
      'Arthur Andersen, one of the top accounting firms at the time, helped Enron manipulate financial statements, misleading investors and regulatory agencies. The fraudulent accounting practices enabled Enron to maintain an artificially high stock price, leading to massive investments from individuals and pension funds.',
      'By 2001, financial analysts and journalists started questioning Enron’s unusually high earnings and unclear financial reports. In October 2001, the company admitted to overstating profits by nearly \$600 million, leading to a rapid decline in stock prices.',
      'In December 2001, Enron filed for bankruptcy—the largest corporate bankruptcy in U.S. history at the time. Thousands of employees lost their jobs, and many investors, including pension funds, faced massive financial losses.',
      'The scandal led to the conviction of top executives, including CEO Jeffrey Skilling and former CEO Kenneth Lay. Lay passed away before sentencing, while Skilling was sentenced to 24 years in prison.',
      'The Enron scandal played a key role in shaping financial regulations, leading to the creation of the **Sarbanes-Oxley Act (SOX)** in 2002, which introduced strict accounting and corporate governance reforms to prevent future frauds of this scale.',
      'To this day, Enron remains a cautionary tale of how corporate greed and lack of oversight can lead to massive financial disasters, affecting millions of people worldwide.',
    ],
    duration: 2,
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: false,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs8',
    categories: [
      'c2',
      'c4',
      'c9',
    ],
    title: 'Edward Snowden & NSA Leaks',
    imageUrl: 'https://i.ytimg.com/vi/jCeyMuHE9qs/maxresdefault.jpg',
    keywords: [
      'Government Surveillance',
      'Whistleblowing',
      'Data Privacy',
      'Cybersecurity',
      'Human Rights',
    ],
    caseStudy: [
      'Edward Snowden, a former NSA contractor, became one of the most famous whistleblowers in history when he leaked highly classified information about U.S. government surveillance programs in 2013.',
      'Working as an IT specialist for the CIA and later as a contractor for the NSA, Snowden gained access to sensitive intelligence operations. He discovered that the NSA was conducting massive global surveillance, collecting phone records, internet activity, and personal communications of both American citizens and foreign leaders.',
      'In June 2013, Snowden fled to Hong Kong and then Russia, where he leaked thousands of documents to journalists from *The Guardian* and *The Washington Post*. These documents revealed programs like PRISM, which allowed the NSA to collect data from major tech companies like Google, Facebook, and Apple.',
      'The revelations sparked global outrage and raised serious concerns about privacy, human rights, and government overreach. Some viewed Snowden as a hero exposing unconstitutional actions, while others considered him a traitor who endangered national security.',
      'The U.S. government charged Snowden under the **Espionage Act**, making it impossible for him to return to the country without facing a lengthy prison sentence. He was granted asylum in Russia, where he has lived since 2013.',
      'As a result of Snowden’s leaks, global debates on data privacy intensified. Many countries re-evaluated their surveillance policies, and tech companies strengthened encryption methods to protect user data.',
      'In 2020, a U.S. court ruled that some NSA surveillance programs exposed by Snowden were illegal, indirectly validating his disclosures. However, he remains in exile, continuing to advocate for digital privacy and government transparency.',
      'Snowden’s case remains a landmark moment in the history of cybersecurity and ethics, shaping modern discussions around personal privacy and government accountability in the digital age.',
    ],
    duration: 2,
    complexity: Complexity.moderate,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs9',
    categories: [
      'c8',
      'c9',
      'c10',
    ],
    title: 'The Great Depression',
    imageUrl: 'https://res.cloudinary.com/aenetworks/image/upload/v1737481209/great-depression-history-gettyimages-80752394.jpg',
    keywords: [
      'Economic Collapse',
      'Stock Market Crash',
      'Unemployment Crisis',
      'Government Policy Failure',
      'Historical Economic Events',
    ],
    caseStudy: [
      'The Great Depression was the worst economic crisis in modern history, beginning in 1929 and lasting throughout the 1930s. It was triggered by the **Stock Market Crash of October 29, 1929 ("Black Tuesday")**, when investors panicked and sold off massive amounts of stock, causing financial chaos.',
      'Banks collapsed as people rushed to withdraw their money, leading to a massive banking crisis. Over **9,000 banks failed** between 1930 and 1933, wiping out life savings and shutting down businesses.',
      'Unemployment skyrocketed to **25% in the U.S.**, and global trade declined significantly, pushing economies worldwide into crisis. Farmers suffered the most, as falling prices and environmental disasters like the **Dust Bowl** ruined agricultural lands.',
      'Governments initially responded with austerity, cutting spending instead of increasing it, which worsened the situation. In the U.S., President Franklin D. Roosevelt introduced the **New Deal**, a series of government programs designed to provide relief, recovery, and reform.',
      'Major reforms included the **Social Security Act**, public works programs like the **Tennessee Valley Authority (TVA)**, and banking regulations such as the **Glass-Steagall Act** to prevent future economic collapses.',
      'The Depression had a lasting impact on economic policies worldwide, leading to the rise of Keynesian economics, which argued for government intervention in markets to prevent downturns.',
      'The Great Depression only truly ended with the onset of **World War II**, when wartime production and military expansion revitalized the economy. However, the lessons learned shaped modern financial regulations, central banking policies, and social safety nets.',
    ],
    duration: 10,
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),

  const CaseStudy(
id: 'cs10',
categories: [
'c1', // Business & Startups
'c4', // Law & Ethics
'c5', // Environmental & Sustainability
],
title: 'The Rana Plaza Collapse',
imageUrl: 'https://media.assettype.com/theleaflet%2Fimport%2Fwp-content%2Fuploads%2F2023%2F04%2FRana-Plaza.png?w=480&auto=format%2Ccompress&fit=max',
keywords: [
'Building Collapse',
'Labor Rights',
'Sustainability',
'Corporate Responsibility',
],
caseStudy: [
'On April 24, 2013, the Rana Plaza building in Dhaka, Bangladesh, collapsed, marking one of the deadliest industrial disasters in modern history. The eight-story commercial building housed several garment factories that supplied clothing to major international brands. Despite visible cracks in the structure appearing the day before the disaster, workers were forced to continue operations under threat of losing their jobs.',

'When the building suddenly gave way, more than 1,100 people lost their lives, and over 2,500 others were injured. The tragedy exposed the dark reality of the fast fashion industry, where cost-cutting measures often came at the expense of worker safety. Investigations later revealed that the building had been constructed illegally, with additional floors added without proper authorization and weak structural integrity.',

'The collapse sparked global outrage and led to significant changes in labor laws and corporate responsibility practices. Following the disaster, the Accord on Fire and Building Safety in Bangladesh and the Alliance for Bangladesh Worker Safety were established, compelling global retailers to ensure better factory conditions. Many brands faced backlash for sourcing products from unsafe factories, pressuring them to improve labor rights policies.',

'Beyond regulatory changes, the Rana Plaza collapse also influenced consumer awareness. Movements like the Fashion Revolution gained momentum, advocating for ethical fashion choices and transparency in supply chains. The tragedy underscored the need for sustainable business practices, leading some companies to shift towards fair-trade and eco-friendly production methods.',

'Despite these improvements, many garment workers in developing countries still face hazardous conditions, low wages, and lack of union representation. The Rana Plaza disaster remains a powerful reminder of the human cost of unethical business practices, emphasizing the urgent need for corporate accountability and sustainable industrial policies.'
],
duration: 0.03, // Case lasted around 3 weeks for immediate legal action
complexity: Complexity.moderate,
severity: Severity.medium,
isLegalCase: true,
isEthicalCase: true,
isBusinessCase: true,
isSocietalImpactCase: true,
isScientificCase: false,
isCulturalCase: false,
isCrisisCase: true,
),

const CaseStudy(
  id: 'cs11',
  categories: [
    'c1', // Business & Startups
    'c6', // Psychology & Human Behavior
    'c9', // Politics & Governance
  ],
  title: 'The Watergate Scandal',
  imageUrl: 'https://www.fbi.gov/image-repository/watergate-complex-2.jpg/@@images/image/high',
  keywords: [
    'Political Scandal',
    'Corruption',
    'Government Accountability',
    'Law Enforcement',
  ],
  caseStudy: [
    'The Watergate Scandal remains one of the most infamous political scandals in American history, leading to the resignation of President Richard Nixon in 1974. It all began on June 17, 1972, when five burglars were caught breaking into the Democratic National Committee (DNC) headquarters at the Watergate Complex in Washington, D.C. Initial reports suggested it was a simple case of burglary, but investigative journalists, particularly Bob Woodward and Carl Bernstein from The Washington Post, uncovered a far-reaching conspiracy linking the break-in to the Nixon administration.',

    'Further investigations revealed that the burglars had direct ties to Nixon’s re-election campaign, and the White House was involved in efforts to obstruct justice. A significant turning point in the case was the discovery of secretly recorded tapes from the Oval Office, which contained conversations proving Nixon’s direct involvement in the cover-up.',

    'The scandal triggered multiple investigations, including hearings by the U.S. Senate and an independent special prosecutor. As public pressure mounted and impeachment proceedings began, Nixon became the first U.S. president to resign on August 8, 1974. His successor, President Gerald Ford, later issued a controversial pardon for Nixon, preventing further legal action against him.',

    'Watergate had long-term consequences on American politics. It led to increased skepticism toward government institutions, reforms in campaign finance laws, and stronger oversight of executive power. The scandal also cemented investigative journalism’s role in holding the government accountable. The phrase "Watergate" has since become synonymous with political corruption and scandal, influencing global politics and governance.',

    'Even decades later, the lessons from Watergate continue to shape public discourse on government ethics, transparency, and the limits of presidential power. The scandal remains a crucial case study in political science, journalism, and law enforcement, illustrating how democracy relies on accountability and the rule of law.'
  ],
  duration: 2, // 1972-1974
  complexity: Complexity.hard,
  severity: Severity.high,
  isLegalCase: true,
  isEthicalCase: true,
  isBusinessCase: false,
  isSocietalImpactCase: true,
  isScientificCase: false,
  isCulturalCase: false,
  isCrisisCase: true,
),

  const CaseStudy(
    id: 'cs12',
    categories: [
      'c2', // Technology & Innovation
      'c4', // Law & Ethics
      'c9', // Politics & Governance
    ],
    title: 'The Ashley Madison Data Breach',
    imageUrl: 'https://krebsonsecurity.com/wp-content/uploads/2023/02/wrap-ashmadhulu.png',
    keywords: [
      'Cybersecurity Breach',
      'Data Privacy',
      'Corporate Ethics',
      'Online Anonymity',
    ],
    caseStudy: [
      'In July 2015, Ashley Madison, a website marketed for extramarital affairs, suffered a massive data breach that exposed the personal information of millions of users worldwide. The hacking group, calling itself The Impact Team, infiltrated the site’s servers and threatened to release user data unless the company, Avid Life Media, shut down Ashley Madison permanently.',

      'When the company refused, the hackers followed through on their threat in August 2015, publishing over 30 gigabytes of sensitive user data, including names, email addresses, credit card transactions, and even personal fantasies. The breach had catastrophic consequences for users, leading to public scandals, divorces, job losses, and in some cases, suicides.',

      'Ashley Madison was already controversial due to its business model, but the breach revealed further ethical concerns. Investigators found that the site had used fake female bot profiles to encourage male users to purchase premium subscriptions. Additionally, despite offering a paid "full delete" feature that supposedly removed user data, it was discovered that deleted accounts were still stored on company servers.',

      'In response to the breach, multiple lawsuits were filed against Avid Life Media for negligence in protecting user data and false advertising. The company later agreed to pay an \$11.2 million settlement to affected users. The scandal also triggered major debates on digital privacy, cybersecurity responsibilities, and the ethics of online businesses that thrive on secrecy.',

      'The Ashley Madison hack remains one of the most infamous cyber security breaches in history, underscoring the risks of online data exposure and the importance of robust digital security. It also served as a warning for companies handling sensitive information, emphasizing the necessity of transparency and ethical business practices in the digital age.'
    ],
    duration: 1, // The main case unfolded in 2015
    complexity: Complexity.moderate,
    severity: Severity.high,
    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs13',
    categories: [
      'c1', // Business & Startups
      'c4', // Law & Ethics
      'c8', // Finance & Economics
    ],
    title: 'The Wells Fargo Fake Accounts Scandal',
    imageUrl: 'https://imageio.forbes.com/specials-images/imageserve/57ea977631358e16c589fa01/0x0.jpg?format=jpg&width=1200',
    keywords: [
      'Banking Fraud',
      'Corporate Scandal',
      'Consumer Protection',
      'Whistleblowing',
    ],
    caseStudy: [
      'In 2016, one of the largest banking scandals in U.S. history came to light when it was revealed that Wells Fargo employees had created millions of unauthorized customer accounts without their consent. The fraudulent activity stemmed from immense pressure on employees to meet aggressive sales targets, leading them to open fake checking and credit card accounts in customers’ names.',

      'For over a decade, Wells Fargo employees engaged in deceptive practices, such as enrolling customers in financial products they never requested, moving funds between accounts without permission, and even generating fake email addresses to activate online banking. This resulted in customers being charged unexpected fees, negatively affecting their credit scores.',

      'The scandal led to widespread outrage, prompting multiple investigations by regulatory bodies, including the Consumer Financial Protection Bureau (CFPB). Wells Fargo was fined \$185 million in 2016, but the fallout continued, leading to additional penalties exceeding \$3 billion over the next few years. CEO John Stumpf resigned in response to the backlash, and the bank’s reputation took a massive hit.',

      'One of the most concerning aspects of the case was the internal culture at Wells Fargo, which encouraged unethical behavior through high-pressure sales quotas and retaliated against whistleblowers who tried to expose the wrongdoing. The scandal highlighted the dangers of profit-driven corporate cultures that prioritize sales performance over ethical business practices.',

      'In the aftermath, Wells Fargo made significant reforms, eliminating unrealistic sales goals and restructuring its leadership. However, the case remains a critical lesson in corporate governance, emphasizing the importance of transparency, ethical leadership, and regulatory oversight in the financial industry.'
    ],
    duration: 14, // The fraudulent activities occurred from 2002 to 2016
    complexity: Complexity.hard,
    severity: Severity.critical,
    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
    id: 'cs14',
    categories: [
      'c5', // Environmental & Sustainability
      'c4', // Law & Ethics
      'c9', // Politics & Governance
    ],
    title: 'The Love Canal Environmental Disaster',
    imageUrl: 'https://media.wired.com/photos/59336403283bfc394dcbf190/master/w_2560%2Cc_limit/love_canal_450px.jpg',
    keywords: [
      'Environmental Pollution',
      'Toxic Waste Dumping',
      'Public Health Crisis',
      'Corporate Negligence',
    ],
    caseStudy: [
      'In the 1970s, the Love Canal neighborhood in Niagara Falls, New York, became one of the worst environmental disasters in U.S. history. The crisis began decades earlier when the Hooker Chemical Company used an abandoned canal to dump over 21,000 tons of toxic chemical waste, including carcinogens like dioxins. In the 1950s, the company sold the land to the local school board for just \$1, warning them about the buried hazardous materials.',

      'Despite the warnings, schools and residential homes were built over the landfill. By the late 1970s, residents started noticing alarming health problems, including high rates of birth defects, miscarriages, and cancer. Toxic chemicals began seeping into the air, water, and soil, causing severe environmental and health hazards.',

      'Public outrage escalated when investigative journalists and activists exposed the extent of contamination. Lois Gibbs, a local resident and mother, led the protests and pressured the government for action. Her efforts resulted in the evacuation of over 800 families and the declaration of Love Canal as a federal emergency disaster zone in 1978.',

      'The scandal led to landmark environmental policies, including the creation of the Superfund Act (CERCLA) in 1980, which holds companies financially responsible for toxic waste cleanup. Hooker Chemical (later owned by Occidental Petroleum) was forced to pay over \$129 million in damages and cleanup costs.',

      'Love Canal remains a symbol of corporate negligence and the long-term consequences of environmental irresponsibility. It serves as a crucial case study in environmental ethics, regulatory failures, and the power of community activism in demanding accountability from corporations and governments.'
    ],
    duration: 30, // The crisis started in the 1940s but became widely known in the 1970s
    complexity: Complexity.hard,
    severity: Severity.critical,
    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

  const CaseStudy(
  id: 'cs6',
  categories: [
'c6', // Psychology & Human Behavior
'c4', // Law & Ethics
],
title: 'The Milgram Obedience Experiment',
imageUrl: 'https://www.simplypsychology.org/wp-content/uploads/milgram-study-mr-wallace.jpg',
keywords: [
'Psychology',
'Obedience to Authority',
'Ethical Dilemma',
'Human Behavior',
'Experimental Psychology',
],
caseStudy: [
'In the early 1960s, psychologist Stanley Milgram conducted one of the most famous and controversial experiments in psychology to study obedience to authority. The experiment aimed to understand how ordinary people could commit atrocities under authoritative commands, particularly in the context of World War II and the Holocaust.',

'Participants were told they were part of a learning experiment where they had to administer electric shocks to a "learner" (an actor) whenever they answered a question incorrectly. The voltage levels increased with each wrong answer, ranging from 15 volts ("slight shock") to 450 volts ("danger: severe shock").',

'Unbeknownst to the participants, the shocks were fake, and the learner’s distress was pre-recorded. However, when participants hesitated to continue, the experimenter, wearing a white lab coat, insisted with phrases like "The experiment requires you to continue." Shockingly, 65% of participants administered the highest 450-volt shock, despite the learner’s (staged) cries of pain and eventual silence.',

'The study revealed unsettling insights into human psychology, showing that individuals are highly likely to follow authoritative orders even when they conflict with personal conscience. The results sparked an intense ethical debate, leading to stricter ethical guidelines for psychological research, including informed consent and the right to withdraw.',

'The Milgram Experiment remains a cornerstone in understanding human obedience, moral decision-making, and the potential for authority-driven harm. It has been replicated in various forms over the decades and continues to be referenced in discussions on psychological coercion, military obedience, and corporate power dynamics.'
],
duration: 1, // The original experiment took place in 1961
complexity: Complexity.moderate,
severity: Severity.medium,
isLegalCase: false,
isEthicalCase: true,
isBusinessCase: false,
isSocietalImpactCase: true,
isScientificCase: true,
isCulturalCase: false,
isCrisisCase: false,
),


];