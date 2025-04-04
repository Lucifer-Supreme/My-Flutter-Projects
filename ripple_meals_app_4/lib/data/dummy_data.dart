import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';

import 'package:ripple_meals_app_4/models/category.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
      id: 'BS',
      title: 'Business & Startups',
      color: Colors.purple,
      imageURL:
          "https://b2bblogassets.airtel.in/wp-content/uploads/2022/06/startup-company-scaled.jpg"),
  Category(
      id: 'TI',
      title: 'Technology & Innovation',
      color: Colors.red,
      imageURL:
          "https://blog.wei.com/hubfs/Blog_Images/key%20factors%20for%20digital%20innovation%20-%20dell%20-%20wei.jpg"),
  Category(
      id: 'HM',
      title: 'Healthcare & Medicine',
      color: Colors.orange,
      imageURL:
          "https://drplus.com.sg/wp-content/uploads/2023/11/drarticle-primary-health.png"),
  Category(
      id: 'LE',
      title: 'Law & Ethics',
      color: Colors.amber,
      imageURL:
          "https://www.thestatesman.com/wp-content/uploads/2020/08/LAW.jpg"),
  Category(
      id: 'ES',
      title: 'Environmental & Sustainability',
      color: Colors.blue,
      imageURL:
          "https://www.efacility.in/wp-content/uploads/2020/12/subslider-GHG01.jpg"),
  Category(
      id: 'PHB',
      title: 'Psychology & Human Behavior',
      color: Colors.green,
      imageURL: "https://img-c.udemycdn.com/course/750x422/544860_87b3_2.jpg"),
  Category(
      id: 'EL',
      title: 'Education & Learning',
      color: Colors.lightBlue,
      imageURL:
          "https://www.eurokidsindia.com/blog/wp-content/uploads/2023/11/innovative-learning-approaches-870x570.jpg"),
  Category(
      id: 'FE',
      title: 'Finance & Economics',
      color: Colors.lightGreen,
      imageURL:
          "https://globalnaps.org/wp-content/uploads/2017/10/Finance-banking.jpg"),
  Category(
      id: 'PG',
      title: 'Politics & Governance',
      color: Colors.pink,
      imageURL:
          "https://blog.politics.ox.ac.uk/wp-content/uploads/2023/05/visual-politics-scaled.jpg"),
  Category(
      id: 'HC',
      title: 'History & Culture',
      color: Colors.teal,
      imageURL: "https://www.nct.ac.in/assets/images/history/2.png"),
];

var dummyCases = [
  const CaseStudy(
    id: 'cs1',
    categories: ['ES', 'FE', 'LE'],
    title: 'The Volkswagen Emissions Scandal',
    imageUrl:
        'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2Ff9d30ce0-f5c2-11e5-96db-fc683b5e52db?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
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
    categories: ['TI', 'PG', 'LE'],
    title: 'Facebook-Cambridge Analytica Data Scandal',
    imageUrl:
        'https://img-cdn.inc.com/image/upload/f_webp,c_fit,w_1920,q_auto/images/panoramic/getty_935015144_351238.jpg',
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
      'BS',
      'ES',
    ],
    title: 'Deepwater Horizon Oil Spill',
    imageUrl:
        'https://cdn.britannica.com/58/139558-050-9EEE9E93/Fireboat-response-crews-blaze-oil-rig-Deepwater-April-21-2010.jpg',
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
      'PHB',
      'LE',
    ],
    title: 'Stanford Prison Experiment',
    imageUrl:
        'https://cdn.britannica.com/01/195501-050-8F76BB72/Guards-prisoner-Phillip-Zimbardo-Stanford-Prison-Experiment.jpg',
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
    categories: ['BS', 'HM', 'LE'],
    title: 'Theranos Fraud Scandal',
    imageUrl:
        'https://media.licdn.com/dms/image/v2/C4E12AQH5d6JeWtnZcQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1550088957329?e=2147483647&v=beta&t=1GsdKZQPms_3oW33WmtE1eorRLVsws5Drpa0q3bT9o4',
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
    categories: ['HM', 'ES', 'PG'],
    title: 'Flint Water Crisis',
    imageUrl:
        'https://i.guim.co.uk/img/media/5a399acd85867d30ceeb8214104371d2bf9fbf2d/0_15_1500_900/master/1500.jpg?width=465&dpr=1&s=none&crop=none',
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
    categories: ['BS', 'FE', 'LE'],
    title: 'The Enron Scandal',
    imageUrl:
        'https://media.licdn.com/dms/image/v2/D4E12AQFsEhD-gDpJKA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1692355002094?e=2147483647&v=beta&t=rU-oFM0mO7CO6D7ODQGIA_5-ZLSfXL6-LK2ozTr1Nzc',
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
    categories: ['PG', 'LE', 'TI'],
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
    categories: ['HC', 'FE', 'PG'],
    title: 'The Great Depression',
    imageUrl:
        'https://res.cloudinary.com/aenetworks/image/upload/v1737481209/great-depression-history-gettyimages-80752394.jpg',
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
      'BS', // Business & Startups
      'LE', // Law & Ethics
      'ES', // Environmental & Sustainability
    ],
    title: 'The Rana Plaza Collapse',
    imageUrl:
        'https://media.assettype.com/theleaflet%2Fimport%2Fwp-content%2Fuploads%2F2023%2F04%2FRana-Plaza.png?w=480&auto=format%2Ccompress&fit=max',
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
      'PG', // Politics & Governance
      'LE' // Law and Ethics
    ],
    title: 'The Watergate Scandal',
    imageUrl:
        'https://www.fbi.gov/image-repository/watergate-complex-2.jpg/@@images/image/high',
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
      'TI', // Technology & Innovation
      'LE', // Law & Ethics
    ],
    title: 'The Ashley Madison Data Breach',
    imageUrl:
        'https://krebsonsecurity.com/wp-content/uploads/2023/02/wrap-ashmadhulu.png',
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
      'BS', // Business & Startups
      'LE', // Law & Ethics
      'FE', // Finance & Economics
    ],
    title: 'The Wells Fargo Fake Accounts Scandal',
    imageUrl:
        'https://imageio.forbes.com/specials-images/imageserve/57ea977631358e16c589fa01/0x0.jpg?format=jpg&width=1200',
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
      'ES', // Environmental & Sustainability
      'HM', //
      'PG', // Politics & Governance
    ],
    title: 'The Love Canal Environmental Disaster',
    imageUrl:
        'https://media.wired.com/photos/59336403283bfc394dcbf190/master/w_2560%2Cc_limit/love_canal_450px.jpg',
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
    duration:
        30, // The crisis started in the 1940s but became widely known in the 1970s
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
    id: 'cs15',
    categories: [
      'PHB', // Psychology & Human Behavior
      'LE', // Law & Ethics
    ],
    title: 'The Milgram Obedience Experiment',
    imageUrl:
        'https://www.simplypsychology.org/wp-content/uploads/milgram-study-mr-wallace.jpg',
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
  const CaseStudy(
    id: 'cs16',
    categories: [
      'ES', // Environmental & Sustainability
      'PG', // Politics & Governance
      'HM',
      'HC'
    ],
    title: 'The Chernobyl Nuclear Disaster',
    imageUrl:
        'https://cdn.britannica.com/27/152727-050-04C4BA16/nuclear-power-station-Chernobyl-Ukraine.jpg',
    keywords: [
      'Nuclear Disaster',
      'Environmental Catastrophe',
      'Radiation Contamination',
      'Government Cover-up',
      'Long-term Health Effects',
    ],
    caseStudy: [
      'On April 26, 1986, the world witnessed one of the worst nuclear disasters in history at the Chernobyl Nuclear Power Plant in Pripyat, Soviet Union (now Ukraine). A late-night safety test at Reactor No. 4 went catastrophically wrong due to design flaws and operator errors, leading to an uncontrolled reaction that caused a massive explosion.',
      'The explosion released an enormous amount of radioactive material, contaminating the surrounding environment and affecting millions of people. The Soviet government initially tried to cover up the disaster, delaying evacuations and withholding critical information from the public. It wasn’t until Swedish radiation detectors picked up abnormal levels of radiation that the world learned about the catastrophe.',
      'More than 100,000 people were evacuated from Pripyat and nearby areas, but many suffered from acute radiation sickness. The long-term effects included cancer, genetic mutations, and severe environmental damage. The Chernobyl Exclusion Zone remains uninhabitable to this day, and the disaster led to global scrutiny of nuclear safety protocols.',
      'The Chernobyl disaster exposed serious flaws in Soviet governance and crisis management, contributing to public distrust in the government and accelerating the collapse of the Soviet Union. In response, international nuclear safety standards were strengthened, and organizations like the IAEA (International Atomic Energy Agency) revised regulations to prevent similar tragedies.',
      'The disaster’s legacy continues through Chernobyl’s impact on environmental conservation, renewable energy discussions, and disaster preparedness strategies worldwide. The site has also become an unlikely tourist attraction and a subject of media and historical studies.'
    ],
    duration:
        1, // The immediate disaster happened in 1986, but effects lasted for decades
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
    id: 'c17',
    categories: [
      'LE', // Law & Ethics
      'PG', // Politics & Governance
      'PHB', // Psychology & Human Behavior
    ],
    title: 'The Abu Ghraib Prison Abuse Scandal',
    imageUrl:
        'https://www.aljazeera.com/wp-content/uploads/2017/09/ac192fb96d0c40cc981b5d99801a7e83_18.jpeg?resize=1200%2C675',
    keywords: [
      'Human Rights Violation',
      'Prisoner Abuse',
      'War Crimes',
      'Psychological Torture',
      'Ethical Dilemma',
    ],
    caseStudy: [
      'In 2003–2004, reports and leaked photographs revealed severe mistreatment, physical abuse, and psychological torture of detainees at the Abu Ghraib prison in Iraq by U.S. military personnel.',
      'Detainees, many of whom were suspected insurgents, were subjected to beatings, sexual humiliation, forced nudity, and stress positions—all captured in disturbing images that shocked the world.',
      'The scandal exposed systemic failures in military oversight, leading to the prosecution of a few lower-ranking soldiers, though higher-level officials largely avoided accountability.',
      'Public backlash was severe, with global protests, diplomatic fallout, and intensified anti-American sentiment in the Middle East. The scandal also raised concerns over the ethics of war, interrogation methods, and human rights violations.',
      'The Abu Ghraib case remains a dark chapter in modern military history, reshaping discussions on prisoner rights, ethical warfare, and military accountability.',
    ],
    duration: 2, // years (2003–2004),
    complexity: Complexity.hard,
    severity: Severity.critical,
    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c18',
    categories: [
      'BS', // Business & Startups
      'FE', // Finance & Economics
    ],
    title: 'The Wirecard Accounting Scandal',
    imageUrl:
        'https://media.licdn.com/dms/image/v2/C4E12AQHsbVD3VPBgrg/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1592999340797?e=2147483647&v=beta&t=-uvyQhVRdGNaVwWR5gK10appqNJEZRskZLCmjW5oswM',
    keywords: [
      'Corporate Fraud',
      'Financial Scandal',
      'Accounting Manipulation',
      'Stock Market Crash',
      'Regulatory Failure',
    ],
    caseStudy: [
      'Wirecard, once Germany’s leading fintech company, was exposed in 2020 for massive accounting fraud involving nearly €1.9 billion missing from its balance sheets.',
      'For years, Wirecard executives manipulated financial statements to inflate revenue, deceive investors, and secure bank loans. The missing money, supposedly held in Philippine bank accounts, was later revealed to be nonexistent.',
      'The scandal unraveled after an investigation by the Financial Times, leading to the collapse of Wirecard, the arrest of key executives, and one of the biggest corporate frauds in European history.',
      'The case exposed weak regulatory oversight in Germany, particularly by BaFin (Federal Financial Supervisory Authority), which failed to act despite multiple warnings.',
      'Wirecard’s downfall shook global financial markets, caused billions in losses for investors, and raised serious concerns about auditing firms’ credibility, as EY (Ernst & Young) had signed off on Wirecard’s fake accounts for years.',
    ],
    duration:
        2, // years (2018–2020) (though fraud was ongoing for over a decade),
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
    id: 'c19',
    categories: [
      'TI', // Technology & Innovation
      'LE', // Law & Ethics
      'PG', // Politics & Governance
    ],
    title: 'The Pegasus Spyware Controversy',
    imageUrl:
        'https://www.livelaw.in/h-upload/2021/07/19/1500x900_396972-pegasus-spyware.jpg',
    keywords: [
      'Surveillance',
      'Privacy Violation',
      'Cybersecurity',
      'Government Espionage',
      'Human Rights',
    ],
    caseStudy: [
      'In 2021, an investigation by The Pegasus Project revealed that the Israeli NSO Group had developed and sold powerful spyware known as Pegasus to various governments worldwide.',
      'Pegasus was capable of hacking smartphones remotely, extracting messages, tracking locations, and even turning on microphones and cameras without user consent.',
      'Evidence showed that journalists, activists, politicians, and business executives were being targeted, sparking global outrage over privacy violations and government surveillance abuse.',
      'NSO Group insisted that Pegasus was only sold to "vetted government agencies" for counterterrorism purposes, but reports suggested its use against dissidents and critics in multiple countries.',
      'Following the revelations, Apple sued NSO Group, and multiple nations launched investigations into the ethical and legal implications of state-sponsored hacking tools.',
      'The case raised important questions about cybersecurity, digital rights, and the balance between national security and personal privacy.',
    ],
    duration: 3, // years (2018 - 2021),
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c20',
    categories: ['TI', 'ES', 'BS', 'HC'],
    title: 'The Challenger Space Shuttle Disaster',
    imageUrl:
        'https://cdn.britannica.com/30/148830-050-D216F45C/Crew-Challenger-mission-Christa-McAuliffe-Gregory-Jarvis-November-1985.jpg',
    keywords: [
      'NASA',
      'Engineering Failure',
      'Organizational Negligence',
      'Space Exploration',
      'Ethical Responsibility',
    ],
    caseStudy: [
      'The Challenger disaster occurred on January 28, 1986, when NASA’s space shuttle Challenger exploded just 73 seconds after liftoff, killing all seven crew members, including teacher Christa McAuliffe, who was set to be the first civilian in space.',
      'The failure was caused by a faulty O-ring in the right solid rocket booster. The O-ring’s design flaw was known to engineers at NASA and contractor Morton Thiokol, but warnings about launching in cold temperatures were ignored due to organizational pressure and public expectations.',
      'The disaster led to a major investigation, resulting in the Rogers Commission Report, which revealed a culture of negligence, poor communication, and decision-making failures within NASA.',
      'As a result, space shuttle missions were halted for nearly three years, and NASA implemented significant safety reforms, including a stronger emphasis on engineering concerns over bureaucratic pressures.',
      'This case remains a landmark example of ethical responsibility in engineering and aerospace and is often studied in discussions about risk management and corporate accountability.',
    ],
    duration: 1,
    complexity: Complexity.moderate,
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
    id: 'c21',
    categories: ['LE', 'BS', 'FE'],
    title: 'The Stanford Financial Group Ponzi Scheme',
    imageUrl:
        'https://fortune.com/img-assets/wp-content/uploads/2023/02/GettyImages-140799302-e1677523212339.jpg',
    keywords: [
      'Ponzi Scheme',
      'Financial Fraud',
      'Investment Scandal',
      'Regulatory Oversight',
      'Corporate Crime',
    ],
    caseStudy: [
      'The Stanford Financial Group Ponzi Scheme was one of the largest financial frauds in history, orchestrated by Allen Stanford through his company, Stanford International Bank (SIB).',
      'From the late 1990s until 2009, Stanford promised high returns on certificates of deposit (CDs), attracting billions of dollars from investors worldwide.',
      'However, instead of legitimate investments, funds from new investors were used to pay earlier investors in classic Ponzi scheme fashion, while Stanford himself lived an extravagant lifestyle.',
      'The scheme unraveled in 2009 when U.S. authorities investigated SIB and discovered that over \$7 billion in investor funds had vanished. The U.S. Securities and Exchange Commission (SEC) froze the company’s assets, leading to a global financial collapse for thousands of investors.',
      'Stanford was convicted in 2012 and sentenced to 110 years in prison for orchestrating one of the most notorious financial frauds, drawing comparisons to Bernie Madoff’s Ponzi scheme.',
    ],
    duration: 12,
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
    id: 'c22',
    categories: [
      'HM',
      'BS',
    ],
    title: 'The EpiPen Price Gouging Scandal',
    imageUrl:
        'https://www.beasleyallen.com/wp-content/uploads/epipen-price-gouging.jpg',
    keywords: [
      'Pharmaceutical Pricing',
      'Healthcare Scandal',
      'Corporate Ethics',
      'Monopoly Abuse',
      'Regulatory Failure',
    ],
    caseStudy: [
      'The EpiPen Price Gouging Scandal revolves around Mylan Pharmaceuticals, which dramatically increased the price of the life-saving EpiPen, used to treat severe allergic reactions.',
      'Between 2007 and 2016, Mylan raised the price of a two-pack of EpiPens from about \$100 to over \$600, despite no significant changes in the product’s formula or manufacturing costs.',
      'The drastic price hikes sparked outrage, as many families and individuals reliant on the medication struggled to afford it, forcing some to take life-threatening risks by rationing doses or seeking alternatives.',
      'Mylan justified the increase by pointing to insurance complexities and product improvements, but investigations revealed excessive executive bonuses and profit-driven motives.',
      'Following public and congressional backlash, Mylan introduced a generic version at a lower price, but the scandal underscored broader issues in the pharmaceutical industry regarding pricing transparency and regulatory oversight.',
    ],
    duration: 9,
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
    id: 'c23',
    categories: [
      'FE',
      'PG',
    ],
    title: 'The 2008 Financial Crisis',
    imageUrl:
        'https://dubeat.com/wp-content/uploads/2018/09/Sample-Essay-on-Causes-and-effects-of-global-financial-crisis-2008-770x350.jpg',
    keywords: [
      'Economic Collapse',
      'Subprime Mortgage Crisis',
      'Wall Street Fraud',
      'Bank Bailouts',
      'Global Recession',
    ],
    caseStudy: [
      'The 2008 Financial Crisis was one of the worst economic disasters since the Great Depression, caused primarily by the collapse of the subprime mortgage market and risky financial practices by major banks and investment firms.',
      'Banks issued high-risk mortgage loans to unqualified borrowers, repackaging these debts into complex financial products that were sold to investors under the assumption of safety.',
      'When homeowners started defaulting on their loans, financial institutions holding these toxic assets suffered massive losses, triggering the downfall of major banks like Lehman Brothers and forcing the U.S. government to intervene with trillion-dollar bailouts.',
      'The crisis led to a global recession, millions of job losses, widespread foreclosures, and public outrage against Wall Street, ultimately leading to the implementation of new financial regulations such as the Dodd-Frank Act.',
      'Despite reforms, the long-term impact of the crisis shaped economic policies, financial regulations, and public distrust in corporate financial practices, emphasizing the need for stricter oversight in global banking systems.',
    ],
    duration: 2,
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
    id: 'c24',
    categories: [
      'LE',
      'PG',
      'HC',
    ],
    title: 'The Iran-Contra Affair',
    imageUrl:
        'https://i0.wp.com/text-message.blogs.archives.gov/wp-content/uploads/sites/5/2021/08/C38108-15.jpg?resize=685%2C458',
    keywords: [
      'Political Scandal',
      'Covert Operations',
      'Arms Trafficking',
      'Government Secrecy',
      'Cold War Politics',
    ],
    caseStudy: [
      'The Iran-Contra Affair was a major political scandal in the 1980s involving the secret sale of weapons to Iran by the Reagan administration, despite an official arms embargo.',
      'Profits from these arms sales were illegally funneled to fund the Contras, a rebel group in Nicaragua fighting against the leftist Sandinista government, violating U.S. law that prohibited military aid to the Contras.',
      'The scandal was exposed in 1986, leading to multiple investigations that revealed a complex web of covert operations, deception, and unauthorized government actions.',
      'Several government officials, including National Security Council members, were implicated, with some convicted of crimes such as obstruction of justice and perjury, although many later received pardons.',
      'The affair damaged public trust in the U.S. government, raised concerns over executive overreach, and set a precedent for how covert operations and foreign policy decisions are scrutinized today.',
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
    id: 'c25',
    categories: [
      'FE',
      'BS',
    ],
    title: 'The Bernie Madoff Ponzi Scheme',
    imageUrl:
        'https://i0.wp.com/revealnews.org/wp-content/uploads/2018/02/bernie-madoff-final.jpg?fit=1000%2C562&ssl=1',
    keywords: [
      'Ponzi Scheme',
      'Financial Fraud',
      'Investment Scandal',
      'Wall Street',
      'Regulatory Failure',
    ],
    caseStudy: [
      'Bernie Madoff orchestrated the largest Ponzi scheme in history, defrauding thousands of investors out of an estimated \$65 billion over several decades.',
      'Madoff’s firm promised consistent, high returns to investors, but instead of generating profits, he used funds from new investors to pay returns to earlier ones, creating the illusion of success.',
      'The scheme unraveled in 2008 when the financial crisis led to increased withdrawal requests that Madoff could no longer fulfill, leading him to confess to his sons, who reported him to authorities.',
      'Madoff was arrested and later sentenced to 150 years in prison for securities fraud, money laundering, and other crimes, marking one of the most infamous financial fraud cases in history.',
      'The scandal exposed serious gaps in financial regulations, as the SEC had received multiple warnings about Madoff’s activities but failed to act, leading to reforms in investor protections and stricter oversight of investment firms.',
    ],
    duration: 00,
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
    id: 'c26',
    categories: [
      'FE',
      'LE',
      'BS',
    ],
    title: 'The Lehman Brothers Collapse',
    imageUrl:
        'https://media.licdn.com/dms/image/v2/D4D12AQGgBq1VcyLTbg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1725877311761?e=2147483647&v=beta&t=6XgZflQF0YGBynL9q0kXctGUxGFpUhz8g6MeVQeL_AY',
    keywords: [
      'Financial Crisis',
      'Bankruptcy',
      'Wall Street Collapse',
      'Subprime Mortgage',
      'Regulatory Oversight',
    ],
    caseStudy: [
      'Lehman Brothers, one of the largest investment banks in the world, played a key role in the 2008 global financial crisis. Its collapse became the largest bankruptcy in U.S. history, with debts exceeding \$600 billion.',
      'The downfall of Lehman Brothers was primarily driven by excessive investment in risky subprime mortgage-backed securities. These securities, linked to high-risk home loans, became increasingly unstable as the U.S. housing market started to decline in 2007.',
      'Despite warning signs, Lehman continued aggressive lending practices and leveraged itself heavily, accumulating an unsustainable debt-to-equity ratio of over 30:1. This meant they were borrowing far more than they could afford to cover in a crisis.',
      'In early 2008, as mortgage defaults surged, Lehman’s financial stability crumbled. Investors and clients lost confidence, leading to massive withdrawals and plummeting stock prices. The bank desperately sought a bailout or acquisition but failed to secure a deal.',
      'On September 15, 2008, Lehman Brothers officially filed for bankruptcy after the U.S. government refused to provide financial aid, citing moral hazard concerns. The bank’s failure triggered a domino effect, worsening the global financial crisis and leading to economic turmoil worldwide.',
      'The collapse led to widespread job losses, home foreclosures, and trillions of dollars in lost wealth. It also sparked major financial reforms, including the Dodd-Frank Act, which imposed stricter regulations on banks and aimed to prevent similar crises in the future.',
      'Lehman’s downfall remains a cautionary tale about the dangers of excessive risk-taking, lack of regulatory oversight, and the fragile nature of financial markets in an interconnected global economy.',
    ],
    duration: 1,
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
    id: 'c27',
    categories: [
      'LE',
      'TI',
      'BS',
    ],
    title: 'The Uber Greyball Scandal',
    imageUrl:
        'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/99C1/production/_90816393_gettyimages-495298217.jpg.webp',
    keywords: [
      'Corporate Misconduct',
      'Regulatory Evasion',
      'Ride-Sharing Industry',
      'Surveillance',
      'Legal Violations',
    ],
    caseStudy: [
      'In 2017, it was revealed that Uber had been using a secret tool called "Greyball" to evade law enforcement and regulatory authorities in cities where its service was restricted or banned.',
      'Greyball was part of Uber’s broader “Violation of Terms of Service” (VTOS) program, designed to identify and block users suspected of being government officials attempting to enforce local ride-sharing regulations.',
      'The software worked by collecting data from various sources, including the Uber app, credit card information, and social media, to determine whether a user was likely a regulator. If flagged, the user would be shown a ghost version of the app, where fake cars appeared, preventing them from booking actual rides.',
      'The tool was used in several cities worldwide, including Portland (USA), Paris (France), and South Korea, where Uber faced legal restrictions. The goal was to avoid fines, impoundments, and legal action while continuing operations under the radar.',
      'The scandal came to light through investigative journalism, leading to backlash from regulators, governments, and the public. The U.S. Department of Justice launched a criminal investigation into Uber’s use of Greyball.',
      'In response, Uber admitted to the program’s existence but claimed it was primarily used for fraud prevention and to protect drivers from potential threats. However, under mounting pressure, Uber promised to discontinue the use of Greyball for regulatory evasion.',
      'The Greyball controversy was one of several scandals that damaged Uber’s reputation, contributing to the resignation of then-CEO Travis Kalanick. It also led to stricter scrutiny of ride-hailing companies and their compliance with laws worldwide.',
    ],
    duration: 4,
    complexity: Complexity.moderate,
    severity: Severity.high,
    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c28',
    categories: [
      'LE',
      'HC',
      'PG',
    ],
    title: 'The Tuskegee Syphilis Experiment',
    imageUrl:
        'https://www.mcgill.ca/oss/files/oss/styles/hd/public/tuskegee_study.jpg?itok=QaQOKZlx&timestamp=1548275432',
    keywords: [
      'Medical Ethics Violation',
      'Human Experimentation',
      'Informed Consent',
      'Public Health Scandal',
      'Government Misconduct',
    ],
    caseStudy: [
      'The Tuskegee Syphilis Experiment was a notorious and unethical clinical study conducted by the **U.S. Public Health Service (PHS)** between **1932 and 1972** in Macon County, Alabama.',
      'The study initially involved **600 African American men**, of whom **399 had syphilis** and **201 were uninfected**. The researchers falsely informed them that they were receiving free medical treatment for "bad blood," a local term for various illnesses.',
      'However, the real purpose of the study was to observe the **natural progression of untreated syphilis** without informing the participants or offering them proper treatment, even after **penicillin became the standard cure in 1947**.',
      'The men were **never told** they had syphilis, nor were they given the option to leave the study. Instead, they were subjected to painful spinal taps and other procedures under the guise of free healthcare.',
      'Over the course of the study, **dozens of men died from syphilis and related complications**, many **unwittingly infected their spouses**, and some **passed the disease to their children at birth**.',
      'The study only came to an end in **1972** after a whistleblower, **Peter Buxtun**, leaked information to the press. Public outrage led to the study’s immediate shutdown and a massive federal investigation.',
      'In **1973**, a lawsuit resulted in a **\$10 million settlement** for the survivors and their families. In **1997**, President **Bill Clinton** issued a formal **apology** on behalf of the U.S. government for the decades-long abuse and deception.',
      'The Tuskegee Syphilis Experiment became a landmark case in medical ethics, leading to the creation of **informed consent laws** and stricter **regulations on human medical research**, including the establishment of Institutional Review Boards (IRBs).',
      'This case remains one of the most infamous examples of **racial injustice in medical history** and a warning against the unchecked power of scientific research over human lives.',
    ],
    duration: 40, // 1932-1972
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c29',
    categories: ['PG', 'FE', 'BS'],
    title: 'The LIBOR Scandal',
    imageUrl:
        'https://sevenpillarsinstitute.org/wp-content/uploads/2017/11/bank-of-england-libor-scandal.jpg',
    keywords: [
      'Financial Manipulation',
      'Banking Fraud',
      'Interest Rate Rigging',
      'Corporate Misconduct',
      'Regulatory Failure',
    ],
    caseStudy: [
      'The **LIBOR (London Interbank Offered Rate) scandal** was one of the largest financial manipulations in history, involving **major banks** colluding to artificially adjust global interest rates for profit.',
      'LIBOR was a benchmark interest rate used to determine borrowing costs for **trillions of dollars** in financial instruments, including **loans, mortgages, and derivatives**. It was calculated daily based on estimates submitted by top banks regarding how much they would charge each other for short-term loans.',
      'Between **2005 and 2012**, investigations revealed that several leading banks, including **Barclays, Deutsche Bank, UBS, and JPMorgan**, **falsified their LIBOR submissions** to manipulate rates in their favor. This allowed them to profit from **trading positions** and appear financially stronger than they actually were during the **2008 financial crisis**.',
      'Traders within these banks **coordinated with each other**, using messages and emails to **influence LIBOR rates**, often joking about their fraudulent activities. In some cases, they bribed **LIBOR submitters** to alter the rates based on their trading needs.',
      'The scandal was **exposed in 2012**, when investigations by financial regulators in the **U.S., UK, and Europe** uncovered massive misconduct. Barclays was the first bank to settle, paying a **\$450 million fine**, followed by other banks, leading to **over \$9 billion in penalties** worldwide.',
      'Several traders and executives were **criminally charged**, with some receiving **prison sentences**. However, many top-level executives **escaped prosecution**, raising concerns over corporate accountability in the financial sector.',
      'The scandal led to major **financial reforms**, including the overhaul of LIBOR’s calculation method and increased regulatory oversight on global interest rate benchmarks. Eventually, LIBOR was **phased out** in 2021, replaced by more transparent interest rate systems like the **SOFR (Secured Overnight Financing Rate)**.',
      'The LIBOR scandal remains a defining example of **financial sector corruption**, showing how **greed and lack of oversight** can undermine global economic stability and impact millions of consumers worldwide.',
    ],
    duration: 7, // 2005-2012
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
    id: 'c30',
    categories: ['LE', 'BS', 'HC', 'ES'],
    title: 'The McLibel Case',
    imageUrl:
        'https://res.cloudinary.com/dyw8mv3b0/image/upload/q_85,w_1200,h_1200,c_limit/v1/news/2023_10/G4JKPG_ppkvmq.jpg',
    keywords: [
      'Defamation Lawsuit',
      'Corporate Accountability',
      'Freedom of Speech',
      'Environmental Impact',
      'Fast Food Industry',
    ],
    caseStudy: [
      'The **McLibel Case** was a landmark **UK legal battle** between McDonald\'s and two environmental activists, Helen Steel and David Morris, who distributed leaflets criticizing the fast-food giant.',
      'The leaflets accused **McDonald\'s of promoting unhealthy food, exploiting workers, harming the environment, and mistreating animals**.',
      'In response, McDonald’s sued for defamation in **1990**, leading to the **longest-running trial in British history, lasting over 10 years**.',
      'Despite McDonald’s winning the case in **1997**, it was a **public relations disaster** for the company, drawing global attention to corporate ethics and free speech issues.',
      'In **2005**, the European Court of Human Rights ruled that the activists were denied a fair trial, leading to a victory for **freedom of expression** and anti-corporate activism.',
    ],
    duration: 16, // 1990 - 2005
    complexity: Complexity.hard,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c31',
    categories: ['BS', 'HM', 'LE'],
    title: 'The OxyContin and Purdue Pharma Scandal',
    imageUrl:
        'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2Fcf3a6636-5ee2-11e9-9300-0becfc937c37?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
    keywords: [
      'Opioid Crisis',
      'Corporate Misconduct',
      'Pharmaceutical Industry',
      'Public Health',
      'Legal Consequences',
    ],
    caseStudy: [
      'The **OxyContin and Purdue Pharma Scandal** is one of the most infamous cases of **corporate misconduct in the pharmaceutical industry**, linked directly to the devastating **opioid epidemic** in the United States.',
      'Purdue Pharma, owned by the **Sackler family**, aggressively marketed **OxyContin**, a powerful painkiller, as a non-addictive solution for chronic pain after its release in **1996**.',
      'Internal company documents later revealed that Purdue **misled doctors and patients** about the risks of addiction, despite knowing that OxyContin was highly addictive and being widely abused.',
      'The aggressive **marketing campaigns and bonuses** for doctors who prescribed the drug led to widespread overprescription, causing a massive rise in **opioid addiction and overdose deaths**.',
      'By the early **2000s**, OxyContin had become a major factor in the opioid crisis, with thousands dying annually from overdoses.',
      'In **2007**, Purdue Pharma executives **pleaded guilty** to misleading regulators, doctors, and patients, resulting in a **\$600 million fine**, one of the largest pharmaceutical settlements at the time.',
      'However, opioid-related deaths continued to surge, leading to **thousands of lawsuits** against Purdue and the Sackler family.',
      'In **2019**, Purdue Pharma filed for **bankruptcy** as part of a multi-billion-dollar settlement agreement with state and local governments.',
      'Despite the legal action, many critics argue that the **Sackler family avoided full accountability**, as they managed to retain billions in wealth while victims of the crisis were left suffering.',
      'The case is now regarded as a stark example of **corporate greed, regulatory failure, and the devastating effects of misleading pharmaceutical marketing**.',
    ],
    duration: 23, // 1996 - 2019
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
    id: 'c32',
    categories: [
      'LE',
      'TI',
    ],
    title: 'The Stuxnet Cyberweapon Attack',
    imageUrl:
        'https://s.yimg.com/ny/api/res/1.2/fPoqjCXq.MJ0uazdz.ezPg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NDY-/https://s.yimg.com/os/creatr-uploaded-images/2019-08/1bef9bd0-cb54-11e9-afbb-41ba524c604d',
    keywords: [
      'Cyber Warfare',
      'Industrial Sabotage',
      'Malware',
      'Nuclear Security',
      'Espionage',
    ],
    caseStudy: [
      'Stuxnet was a highly sophisticated computer worm first discovered in 2010 but believed to have been in development since at least 2005.',
      'It specifically targeted Siemens industrial control systems, particularly those used in Iran’s Natanz nuclear facility.',
      'Unlike traditional malware, Stuxnet was designed to cause physical damage by manipulating industrial machinery, making it one of the first known cyber weapons.',
      'The worm spread globally but remained dormant on most computers unless specific conditions were met, ensuring it only activated in its intended target environment.',
      'Experts believe Stuxnet was a joint effort by the U.S. and Israeli intelligence agencies to slow down Iran’s nuclear program without resorting to direct military action.',
      'The attack successfully damaged Iranian centrifuges, delaying uranium enrichment efforts, but also opened discussions on the dangers of cyber warfare in modern geopolitics.',
      'After its discovery, Stuxnet’s code was analyzed and adapted by various hacker groups, raising concerns about similar cyber threats in the future.',
    ],
    duration: 5, // 2005 - 2010
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c33',
    categories: ['BS', 'ES', 'HM', 'HC'],
    title: 'The Bhopal Gas Tragedy',
    imageUrl:
        'https://sageuniversity.edu.in/assets/images/blog/the-aftermath-of-bhopal-gas-tragedy-and-its-laws.png',
    keywords: [
      'Industrial Disaster',
      'Environmental Catastrophe',
      'Corporate Negligence',
      'Toxic Gas Leak',
      'Public Health Crisis',
    ],
    caseStudy: [
      'On the night of December 2-3, 1984, the Union Carbide pesticide plant in Bhopal, India, leaked 40 tons of methyl isocyanate (MIC) gas into the surrounding areas.',
      'The highly toxic gas spread rapidly, exposing over 500,000 people in the densely populated city. Thousands died within hours, and many suffered severe respiratory, neurological, and reproductive disorders.',
      'Union Carbide’s lack of proper safety measures, including malfunctioning alarms and under-maintained safety systems, contributed to the disaster’s scale.',
      'The Indian government estimated the immediate death toll to be around 3,000, but later reports suggested that over 15,000 people died due to long-term health complications.',
      'The aftermath of the disaster included lawsuits against Union Carbide, leading to a controversial settlement of \$470 million, which many victims and activists deemed inadequate.',
      'The site remained contaminated for decades, with toxic waste leaching into groundwater, affecting generations of local residents.',
      'The Bhopal disaster remains one of the world’s worst industrial accidents, prompting global discussions on corporate responsibility and stricter environmental safety regulations.',
    ],
    duration: 1, // 1984 - 1985 (Immediate crisis period)
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
    id: 'c34',
    categories: [
      'LE',
      'PHB',
    ],
    title: 'The McMartin Preschool Trial',
    imageUrl:
        'https://static01.nyt.com/images/2014/03/06/multimedia/retro-mcmartin-preschool/retro-mcmartin-preschool-superJumbo.jpg',
    keywords: [
      'False Allegations',
      'Mass Hysteria',
      'Legal Misconduct',
      'Child Abuse Scandal',
      'Psychology of Memory',
    ],
    caseStudy: [
      'The McMartin Preschool Trial, which began in 1983 and lasted until 1990, was one of the longest and most expensive criminal trials in U.S. history, involving allegations of child abuse and satanic rituals at a California daycare.',
      'The case started when a mother accused a teacher at the McMartin Preschool of sexually abusing her child. The allegations quickly escalated, with over 360 children interviewed and many making bizarre claims, including underground tunnels and satanic rituals.',
      'Investigators and therapists used leading and suggestive questioning techniques, which many experts later argued led to false memories and fabricated testimonies from the children.',
      'The trial lasted for seven years, costing the government over \$15 million, but no convictions were ever secured due to lack of credible evidence. The defendants were eventually acquitted, and the case became a cautionary example of mass hysteria and flawed investigative methods.',
      'The McMartin case contributed to discussions about the reliability of children’s testimonies, the dangers of moral panic, and the importance of proper forensic interviewing techniques.',
      'Despite the acquittals, the accused suffered lifelong reputational and financial damage, and the case left a lasting impact on legal and psychological fields regarding child abuse investigations.',
    ],
    duration: 7, // 1983 - 1990
    complexity: Complexity.hard,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c35',
    categories: [
      'LE',
      'PHB',
      'HC',
    ],
    title: 'The Salem Witch Trials',
    imageUrl:
        'https://th-thumbnailer.cdn-si-edu.com/FpLi24Hbyb2LHtmgf-5okCoGohw=/fit-in/1600x0/filters:focal(1280x914:1281x915)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/40/e6/40e69d4a-6016-4815-ba7a-01fce1bb2e5d/examination_of_a_witch_-_tompkins_matteson.jpeg',
    keywords: [
      'Mass Hysteria',
      'Witchcraft',
      'Religious Persecution',
      'Colonial America',
      'Legal Injustice',
    ],
    caseStudy: [
      'The Salem Witch Trials were a series of hearings and prosecutions of people accused of witchcraft in colonial Massachusetts between February 1692 and May 1693.',
      'The trials began when young girls in Salem Village claimed to be possessed by the devil and accused several local women of practicing witchcraft. This led to a wave of paranoia, and accusations spread rapidly throughout the community.',
      'The trials relied on spectral evidence—claims that the accused appeared in dreams or visions to harm victims—despite its dubious reliability. This fueled widespread panic and created a system where mere accusations could result in execution.',
      'Over 200 people were accused, and 30 were found guilty. Nineteen were hanged, one was pressed to death with heavy stones, and several others died in jail while awaiting trial.',
      'The trials ended when the governor of Massachusetts, whose own wife was accused, intervened and halted the proceedings. Years later, the state admitted the trials were a mistake, and in 1711, it offered restitution to the families of the accused.',
      'The Salem Witch Trials have since been studied as an example of mass hysteria, the dangers of unchecked religious extremism, and the flaws of a legal system driven by fear rather than evidence.',
      'The trials also played a significant role in shaping modern American legal standards, particularly regarding due process and the presumption of innocence.',
    ],
    duration: 1, // 1692 - 1693
    complexity: Complexity.moderate,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c36',
    categories: [
      'EL',
      'LE',
      'PHB',
    ],
    title: 'The Brown v. Board of Education Case',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXd7h7UNDhyEr0I7M7OTCOcKLuu_yJLOaXsw&s',
    keywords: [
      'Racial Segregation',
      'Education Reform',
      'Civil Rights Movement',
      'Equal Opportunities',
      'Supreme Court',
    ],
    caseStudy: [
      'Brown v. Board of Education was a landmark 1954 U.S. Supreme Court case that declared racial segregation in public schools unconstitutional.',
      'The case was brought by Oliver Brown, who sued the Board of Education of Topeka, Kansas, after his daughter was denied entry to an all-white school near their home. His case was joined with several others representing Black families across the country.',
      'At the time, segregation in schools was justified under the doctrine of "separate but equal," established by the 1896 Plessy v. Ferguson case. However, in practice, segregated Black schools were underfunded and lacked proper resources compared to their white counterparts.',
      'The legal team, led by Thurgood Marshall of the NAACP, argued that segregation violated the Equal Protection Clause of the 14th Amendment. They provided psychological studies, such as the "Doll Test," which demonstrated the negative effects of segregation on Black children\'s self-esteem and development.',
      'In a unanimous 9-0 decision, the Supreme Court ruled that "separate educational facilities are inherently unequal," overturning Plessy v. Ferguson and setting the stage for nationwide desegregation.',
      'This decision marked a turning point in the Civil Rights Movement, sparking nationwide resistance and eventual progress toward educational equality. However, many Southern states resisted desegregation, leading to further legal battles and federal interventions in the years that followed.',
      'Brown v. Board of Education remains a cornerstone case in education reform and civil rights, highlighting the role of the legal system in shaping social progress.',
    ],
    duration: 3, // 1951 - 1954
    complexity: Complexity.hard,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c37',
    categories: [
      'EL',
      'BS',
      'FE',
    ],
    title: 'The College Admissions Scandal (Operation Varsity Blues)',
    imageUrl:
        'https://occ-0-8407-90.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQFxcVmPTsi8JtAY-YLuJmXeviQOeSppT6shCU_2_XdM1-uhkM84j-A2hXcaKA6XNE9Hr9AKq2UNBQ368gS2vzwNOHcgxmUGeRpf7Okz85PQ6p62UgQNbMSe4RT0zufUXHjAeA.jpg?r=415',
    keywords: [
      'College Admissions',
      'Bribery',
      'Educational Fraud',
      'Ivy League',
      'Wealth Privilege',
    ],
    caseStudy: [
      'The College Admissions Scandal, also known as "Operation Varsity Blues," was a massive fraud scheme uncovered by the FBI in 2019, exposing how wealthy families used bribery and fraud to secure spots for their children in elite universities.',
      'The scheme, orchestrated by Rick Singer, involved cheating on standardized tests, fabricating athletic credentials, and bribing college officials to designate students as recruited athletes, even if they had never played the sport.',
      'More than 50 individuals, including Hollywood celebrities (like Lori Loughlin and Felicity Huffman), CEOs, and coaches from prestigious universities (such as Stanford, Yale, and USC), were implicated in the scandal.',
      'Parents paid anywhere from \$15,000 to \$500,000 to manipulate admissions processes, either by rigging SAT/ACT exams or bribing university staff.',
      'The scandal exposed deep inequalities in the U.S. higher education system, showing how wealth and influence could override merit-based admissions.',
      'The legal consequences were swift—many parents, coaches, and college officials were arrested and sentenced to prison, fines, or community service. Rick Singer, the mastermind behind the operation, pleaded guilty to multiple charges, including fraud and money laundering.',
      'The case led to widespread discussions about fairness in education, prompting universities to tighten admissions policies and reconsider how athletics and donations influence student acceptance.',
      'Operation Varsity Blues highlighted the broader systemic issues in higher education, reinforcing the belief that access to top universities is often dictated by wealth and privilege rather than academic merit.',
    ],
    duration: 8, // 2011 - 2019
    complexity: Complexity.moderate,
    severity: Severity.high,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c38',
    categories: [
      'EL',
      'LE',
      'PG',
    ],
    title: 'No Child Left Behind Act: Success or Failure?',
    imageUrl:
        'https://cdn.theatlantic.com/thumbor/xH8T4zoDv0LVlEN4xL5SDNUB4Y0=/0x131:2048x1283/960x540/media/img/mt/2015/12/essa/original.jpg',
    keywords: [
      'Education Policy',
      'Standardized Testing',
      'Public Schools',
      'Achievement Gap',
      'Accountability',
    ],
    caseStudy: [
      'The No Child Left Behind (NCLB) Act was a major U.S. education reform law signed into effect by President George W. Bush in 2002. Its goal was to improve educational outcomes by holding schools accountable for student performance.',
      'The act required states to develop standardized tests in reading and math, with schools receiving funding based on student test results. Schools that failed to meet performance benchmarks faced consequences, such as reduced funding, staff restructuring, or even closure.',
      'Supporters argued that NCLB increased focus on academic achievement, improved transparency, and helped identify struggling schools in need of intervention. They believed that accountability measures forced schools to address educational disparities, particularly among low-income and minority students.',
      'However, critics argued that the policy led to "teaching to the test," narrowing the curriculum and placing excessive pressure on students and teachers. Many educators felt that the rigid standards failed to account for diverse learning needs and that funding cuts disproportionately affected underprivileged schools.',
      'Over time, widespread dissatisfaction with NCLB grew, as schools struggled to meet unrealistic proficiency goals. Many states sought waivers from the law’s requirements, arguing that its rigid testing benchmarks did not reflect true learning progress.',
      'By 2015, the law was officially replaced by the Every Student Succeeds Act (ESSA), which gave states more control over education policies while maintaining accountability for student performance.',
      'The No Child Left Behind Act remains a controversial chapter in U.S. education history, illustrating the challenges of balancing accountability with meaningful educational reform. It sparked nationwide debates about standardized testing, school funding, and the role of federal oversight in education.',
    ],
    duration: 13, // 2002 - 2015
    complexity: Complexity.hard,
    severity: Severity.medium,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c39',
    categories: [
      'EL',
      'PG',
    ],
    title: 'The Common Core State Standards Initiative',
    imageUrl:
        'https://miro.medium.com/v2/resize:fit:1200/1*v1V0ZtXxnSXW6UaJx04eXA.jpeg',
    keywords: [
      'Education Reform',
      'Standardized Curriculum',
      'Common Core',
      'Policy Controversy',
      'State Adoption',
    ],
    caseStudy: [
      'Launched in 2010, the Common Core State Standards Initiative aimed to provide a unified set of educational benchmarks for K–12 students across the United States. Developed through a state-led effort, it was designed to raise academic standards and better prepare students for college and careers.',
      'The initiative sparked intense debates over federal versus state control in education, with critics arguing that the standards encroached on local autonomy and led to a “one-size-fits-all” approach in teaching. Supporters, however, claimed that Common Core would reduce disparities in student achievement and improve educational outcomes nationwide.',
      'Controversies quickly emerged regarding the implementation process. Teachers, parents, and policymakers raised concerns about the increased emphasis on standardized testing, which many believed led to "teaching to the test" and reduced creativity in the classroom.',
      'Several states experienced legal challenges and political pushback; some even opted to repeal or revise the standards in response to public outcry. Despite the controversies, many states continue to use modified versions of the Common Core, highlighting its lasting impact on U.S. education.',
      'The Common Core case study remains a significant example of how education policy can become a flashpoint for broader political, ethical, and societal debates about the purpose and quality of public education in America.',
    ],
    duration: 11, // 2010 - 2021 (ongoing impact)
    complexity: Complexity.moderate,
    severity: Severity.medium,

    isLegalCase: true, // due to legal challenges and policy debates
    isEthicalCase:
        true, // because it raised ethical issues around educational equity
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true, // significant cultural and political debates
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c40',
    categories: [
      'ES',
      'HM'
          'PG',
    ],
    title: 'The Fukushima Daiichi Nuclear Disaster',
    imageUrl:
        'https://bpb-us-e1.wpmucdn.com/sites.suffolk.edu/dist/1/951/files/2015/10/FukushimaMeltdown101113.jpeg',
    keywords: [
      'Nuclear Disaster',
      'Earthquake',
      'Tsunami',
      'Radiation Release',
      'Environmental Impact',
    ],
    caseStudy: [
      'On March 11, 2011, a 9.0 magnitude earthquake struck off the coast of Japan, triggering a massive tsunami that overwhelmed the Fukushima Daiichi Nuclear Power Plant’s seawall. The plant’s cooling systems failed, leading to meltdowns in three reactors and a significant release of radioactive material.',
      'The disaster forced the evacuation of over 150,000 residents and created long-term environmental contamination, with radioactive isotopes seeping into the ocean and soil. The crisis raised serious questions about the safety protocols of nuclear power plants in earthquake-prone regions.',
      'In the aftermath, the Japanese government and international regulatory bodies conducted extensive reviews of nuclear safety standards. The disaster not only impacted local communities but also reshaped global energy policies and accelerated debates over the future of nuclear energy.',
      'Legal battles ensued over compensation for affected residents, and the incident spurred significant investment in renewable energy sources worldwide. Despite extensive cleanup efforts, the Fukushima site remains hazardous, serving as a stark reminder of the potential consequences of nuclear energy mismanagement.',
    ],
    duration: 1, // Immediate crisis in 2011; long-term impacts persist
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
    id: 'c41',
    categories: [
      'TI', // Technology & Innovation
      'LE', // Law & Ethics
    ],
    title: 'The WannaCry Ransomware Attack',
    imageUrl:
        'https://asimily.com/wp-content/uploads/2023/08/The-WannaCry-Ransomware-Legacy-Attack-Asimily-png.png',
    keywords: [
      'Cybersecurity',
      'Ransomware',
      'EternalBlue Vulnerability',
      'Global Disruption',
      'Lazarus Group',
    ],
    caseStudy: [
      'In May 2017, the WannaCry ransomware attack spread rapidly around the globe, affecting over 200,000 computers in more than 150 countries. The malware exploited a critical vulnerability in Microsoft Windows (known as EternalBlue) to encrypt files on infected systems and demand ransom payments in Bitcoin.',
      'The attack had immediate and severe consequences for a range of organizations, most notably crippling the United Kingdom’s National Health Service (NHS), where hospitals and clinics were forced to cancel appointments and divert emergency services, highlighting the vulnerability of critical infrastructure to cyber threats.',
      'Believed to have been launched by the North Korean-linked Lazarus Group, WannaCry raised significant concerns about state-sponsored cyberattacks and underscored the importance of timely software updates and robust cybersecurity measures.',
      'The incident sparked a global call-to-action for improved cybersecurity practices, leading to collaborative efforts among governments, private organizations, and cybersecurity experts to prevent similar future attacks.',
      'While a decryption tool was eventually found to mitigate further damage, the WannaCry attack remains a stark reminder of the far-reaching impact of cyber threats in an increasingly digital world.',
    ],
    duration: 1, // Immediate crisis in May 2017 (short-term outbreak)
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c42',
    categories: [
      'PG', // Politics & Governance
      'FE', // Finance & Economics
      'HC', // History & Culture
      'HM'
    ],
    title: 'The COVID-19 Pandemic',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4_qWZ_DgDovOwwfabzGT5H8eNjDHz_c4B7Q&s',
    keywords: [
      'Global Pandemic',
      'Public Health Crisis',
      'Economic Impact',
      'Government Response',
      'Social Distancing',
    ],
    caseStudy: [
      'First identified in Wuhan, China in December 2019, the COVID-19 pandemic rapidly escalated into a global crisis, with the World Health Organization declaring it a pandemic in March 2020. The virus spread to nearly every country, infecting millions and causing significant loss of life.',
      'Governments worldwide implemented drastic measures such as lockdowns, travel bans, and social distancing protocols to contain the virus. These actions led to unprecedented disruptions in global economies, education systems, and everyday life.',
      'The pandemic spurred an extraordinary scientific response, culminating in the rapid development, approval, and mass distribution of multiple vaccines. This effort was one of the fastest in medical history, involving international collaboration and significant financial investments.',
      'Despite these efforts, challenges such as vaccine hesitancy, misinformation, and uneven healthcare infrastructure led to varying outcomes across different regions, highlighting deep-seated inequalities in global health and economic stability.',
      'The COVID-19 crisis not only strained healthcare systems but also reshaped societal norms and accelerated digital transformation across industries. It raised critical debates about balancing individual freedoms with public health, and its long-term impacts continue to influence global governance, economic policies, and cultural practices.',
    ],
    duration: 3, // 2019 - 2022 (approximate crisis period)
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c43',
    categories: [
      'PG',
      'HC',
      'LE',
    ],
    title: 'The Brexit Referendum',
    imageUrl:
        'https://4a7efb2d53317100f611-1d7064c4f7b6de25658a4199efb34975.ssl.cf1.rackcdn.com/brexit-referendum-5-cybersecurity-implications-showcase_image-3-p-2160.jpg',
    keywords: [
      'Brexit',
      'European Union',
      'Political Referendum',
      'UK Politics',
      'National Sovereignty',
    ],
    caseStudy: [
      'On June 23, 2016, the United Kingdom held a historic referendum in which a narrow majority voted to leave the European Union, an event commonly known as Brexit. The decision marked a significant turning point in UK politics and had far-reaching implications for the nation’s legal, economic, and cultural landscape.',
      'The campaign was highly polarized, with advocates for Brexit emphasizing regaining national sovereignty, controlling immigration, and reducing EU regulations, while opponents warned of economic uncertainty, diminished global influence, and potential social division.',
      'Following the vote, the UK entered a prolonged period of negotiation and political turmoil as it sought to establish a withdrawal agreement with the EU. The subsequent negotiations were marked by intense debates over trade, security, and legal alignment, ultimately culminating in the UK’s formal exit from the EU in January 2020.',
      'The Brexit process also triggered a series of legal challenges and constitutional debates, raising questions about the nature of sovereignty and the future of the Union, especially with growing calls for Scottish independence.',
      'Overall, the Brexit Referendum remains a landmark event that not only reshaped the political order in the UK but also had significant cultural and societal repercussions, influencing debates on national identity and global integration.',
    ],
    duration: 4, // 2016 - 2020
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c44',
    categories: ['ES', 'HC', 'PG', 'HM'],
    title: 'The 2004 Indian Ocean Tsunami',
    imageUrl:
        'https://static.toiimg.com/thumb/msid-55071172,width-1280,height-720,resizemode-4/55071172.jpg',
    keywords: [
      'Natural Disaster',
      'Earthquake',
      'Tsunami',
      'Humanitarian Crisis',
      'Global Aid',
    ],
    caseStudy: [
      'On December 26, 2004, a massive undersea earthquake off the coast of Sumatra, Indonesia, with a magnitude of 9.1–9.3, triggered a series of catastrophic tsunamis that struck the coasts of 14 countries along the Indian Ocean.',
      'The tsunamis resulted in widespread devastation, with waves reaching heights of up to 30 meters in some areas, causing the deaths of over 230,000 people and displacing millions. The disaster left entire communities in ruins, with critical infrastructure, homes, and livelihoods destroyed.',
      'The scale of the tragedy prompted an unprecedented global humanitarian response, as governments, NGOs, and private donors mobilized billions of dollars in aid to support relief and reconstruction efforts. The disaster also underscored the urgent need for improved early warning systems and disaster preparedness in vulnerable coastal regions.',
      'In the aftermath, affected nations faced long-term challenges, including rebuilding infrastructure, resettling displaced populations, and mitigating ongoing environmental impacts such as coastal erosion and ecosystem damage.',
      'The 2004 Indian Ocean Tsunami remains one of the deadliest natural disasters in modern history and has significantly influenced international policies on disaster management, early warning systems, and global humanitarian aid.',
    ],
    duration: 1, // Immediate impact in December 2004
    complexity: Complexity.simple,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c45',
    categories: [
      'TI', // Technology & Innovation
      'LE', // Law & Ethics
      'PG', // Politics & Governance
    ],
    title: 'The SolarWinds Cyberattack',
    imageUrl:
        'https://i.ytimg.com/vi/Sphqregsss4/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBucFjyT5lTwiMg7vQ9Tskthw1AcA',
    keywords: [
      'Cyberattack',
      'Supply Chain Security',
      'Nation-State Hack',
      'Government Breach',
      'Digital Espionage',
    ],
    caseStudy: [
      'Discovered in December 2020, the SolarWinds Cyberattack was a sophisticated supply chain breach that compromised the update mechanism of SolarWinds’ Orion software. Malicious code was inserted into routine software updates, affecting thousands of organizations worldwide.',
      'The attack is widely attributed to a nation-state group, enabling persistent access to sensitive networks of U.S. government agencies, Fortune 500 companies, and critical infrastructure providers. This unprecedented breach raised alarms about vulnerabilities in global IT supply chains and national cybersecurity.',
      'Investigations revealed that the attackers exploited weak security practices and digital trust assumptions, leading to extensive data exfiltration and undermining confidence in software supply chain integrity.',
      'The incident spurred urgent calls for cybersecurity reforms, tighter regulation, and enhanced public-private cooperation to protect critical digital infrastructure against state-sponsored cyber espionage.',
      'The SolarWinds attack remains one of the most consequential cybersecurity incidents in recent history, highlighting the evolving threat landscape and the need for robust digital defense strategies.',
    ],
    duration: 1, // 2020 - 2021
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
    id: 'c46',
    categories: [
      'PG',
      'HC',
    ],
    title: 'The Grenfell Tower Fire',
    imageUrl:
        'https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/1267C/production/_96488357_tower_sequence.png',
    keywords: [
      'Fire Disaster',
      'Building Safety',
      'Negligence',
      'Urban Crisis',
      'Government Accountability',
    ],
    caseStudy: [
      'On June 14, 2017, a devastating fire broke out in Grenfell Tower, a 24-story residential building in West London. The fire spread rapidly, fueled by flammable exterior cladding and poor fire safety measures.',
      'The disaster resulted in over 70 fatalities and hundreds of injuries, causing widespread devastation and displacing many residents. The tragedy exposed systemic failures in building regulations and emergency response protocols.',
      'Public outcry surged as investigations revealed long-standing neglect and a lack of accountability from both the building management and local authorities. The fire became a symbol of urban neglect and inequality in housing safety.',
      'In the aftermath, a comprehensive public inquiry was launched to investigate the causes of the fire and to reform safety standards for high-rise buildings across the UK. The findings have led to significant changes in fire safety policies and renewed calls for government accountability in housing management.',
      'The Grenfell Tower Fire remains a stark reminder of the critical importance of enforcing robust safety standards to protect vulnerable communities and prevent future tragedies.',
    ],
    duration: 1, // Immediate crisis on June 14, 2017
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c47',
    categories: [
      'LE', // Law & Ethics
      'PG', // Politics & Governance
      'FE', // Finance & Economics
    ],
    title: 'Operation Car Wash (Lava Jato)',
    imageUrl:
        'https://static01.nyt.com/images/2021/02/26/opinion/26Estrada/26Estrada-videoSixteenByNineJumbo1600.jpg',
    keywords: [
      'Corruption',
      'Bribery',
      'Petrobras',
      'Political Scandal',
      'Brazil',
    ],
    caseStudy: [
      'Operation Car Wash (Operação Lava Jato) was a sweeping corruption investigation that began in 2014 in Brazil. It exposed a massive bribery scheme involving the state-run oil company Petrobras, major construction firms, and numerous politicians, revealing how kickbacks were funneled to secure lucrative contracts.',
      'The investigation uncovered that billions of dollars in public funds were embezzled through complex networks of corruption, implicating top executives and political figures across multiple Latin American countries. The scandal led to the arrest and conviction of high-profile individuals, including former presidents and influential business leaders.',
      'The fallout from Operation Car Wash had far-reaching consequences, triggering political crises, economic downturns, and a significant loss of public trust in government institutions. It prompted a series of legal reforms and anti-corruption measures aimed at increasing transparency and accountability in both the public and private sectors.',
      'Despite controversies and challenges during its lengthy investigation, Operation Car Wash remains one of the most impactful corruption scandals in modern history, reshaping the political landscape in Brazil and setting a precedent for global anti-corruption efforts.',
    ],
    duration: 6, // 2014 - 2020
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c48',
    categories: [
      'PG', // Politics & Governance
      'HC', // History & Culture
      'LE', // Law & Ethics
      'HM'
    ],
    title: 'The Rwandan Genocide',
    imageUrl:
        'https://content.magnumphotos.com/wp-content/uploads/2019/04/cortex/nn11583325-teaser-story-big.jpg',
    keywords: [
      'Genocide',
      'Ethnic Conflict',
      'Mass Atrocity',
      'Human Rights Violation',
      'International Intervention',
    ],
    caseStudy: [
      'In 1994, over the course of roughly 100 days, a systematic campaign of ethnic cleansing led to the brutal killing of an estimated 800,000 people in Rwanda. The violence primarily targeted the Tutsi minority, although moderate Hutus were also victimized, as extremist Hutu factions incited mass hatred and violence.',
      'The genocide was fueled by decades of ethnic tension, political manipulation, and historical grievances, exacerbated by incendiary propaganda and a breakdown of state authority. Ordinary citizens were drawn into acts of violence, and entire communities were torn apart amid widespread atrocities including mass killings, sexual violence, and forced displacement.',
      'Despite early warnings and clear signs of escalating violence, the international community largely failed to intervene effectively. The inaction of global powers has since been widely criticized, prompting significant debates on the responsibility to protect vulnerable populations.',
      'In the aftermath, both international tribunals and local courts were established to bring perpetrators to justice, leading to landmark legal proceedings that reshaped international law regarding genocide and crimes against humanity.',
      'The Rwandan Genocide remains a stark reminder of the catastrophic consequences of unchecked ethnic hatred and political failure, profoundly influencing how the world approaches conflict prevention, humanitarian intervention, and post-conflict reconciliation.',
    ],
    duration: 0.27, // Approximately 100 days (0.27 years)
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c49',
    categories: [
      'LE', // Law & Ethics
      'PG', // Politics & Governance
      'HC', // History & Culture
    ],
    title: 'The Boston Marathon Bombing',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8s5m_o_XwRFhkCwm9DeWTvaL1y_BrhTzBgg&s',
    keywords: [
      'Terrorism',
      'Public Safety',
      'Law Enforcement',
      'Counterterrorism',
      'Mass Casualty Attack',
    ],
    caseStudy: [
      'On April 15, 2013, during the Boston Marathon, two homemade bombs exploded near the finish line in Boston, Massachusetts, killing 3 people and injuring over 264 others. The coordinated attack shocked the nation and prompted a swift and massive law enforcement response.',
      'The bombing underscored the persistent threat of terrorism on U.S. soil and led to an intensive investigation involving federal, state, and local agencies. Within days, authorities identified and apprehended the suspects linked to extremist ideologies, highlighting the effectiveness—and challenges—of modern counterterrorism efforts.',
      'The incident sparked widespread debates on enhancing public safety and surveillance, as well as the balance between civil liberties and security. The tragedy also catalyzed improvements in emergency response strategies and reshaped policies aimed at preventing future attacks.',
      'The Boston Marathon Bombing remains a pivotal event in recent American history, symbolizing both the vulnerability of public spaces to terrorist threats and the resilience of communities in the face of adversity.',
    ],
    duration: 0.002, // The attack occurred on a single day (April 15, 2013)
    complexity: Complexity.moderate,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c50',
    categories: [
      'FE', // Finance & Economics
      'PG', // Politics & Governance
    ],
    title: 'The Panama Papers Leak',
    imageUrl:
        'https://economictimes.indiatimes.com/thumb/msid-64685550,width-1200,height-900,resizemode-4,imgsize-87914/untitled-8.jpg?from=mdr',
    keywords: [
      'Offshore Finance',
      'Tax Evasion',
      'Corruption',
      'Investigative Journalism',
      'Data Leak',
    ],
    caseStudy: [
      'In April 2016, a massive leak of 11.5 million documents from the Panamanian law firm Mossack Fonseca, known as the Panama Papers, revealed how wealthy individuals and public officials used offshore tax havens to conceal their wealth, evade taxes, and launder money.',
      'The leaked documents exposed secret financial dealings of hundreds of high-profile figures worldwide, sparking global debates on tax justice, financial transparency, and corruption. Governments, investigative journalists, and regulatory agencies collaborated to sift through the data, leading to a series of high-profile investigations and policy changes.',
      'The revelations led to resignations of prominent public figures, criminal investigations, and reforms in financial regulation in several countries. The Panama Papers not only exposed the dark side of global finance but also underscored the power of investigative journalism in holding the elite accountable.',
      'This case remains one of the largest data breaches in history, significantly influencing public discourse on economic inequality, regulatory oversight, and the ethical responsibilities of financial institutions and governments.',
    ],
    duration: 1, // 2016 (ongoing impact)
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c51',
    categories: [
      'FE', // Finance & Economics
      'PG', // Politics & Governance
      'LE', // Law & Ethics
    ],
    title: 'The Greek Debt Crisis',
    imageUrl:
        'https://i.ndtvimg.com/i/2015-07/greece-yes-no_650x400_81436064290.jpg',
    keywords: [
      'Economic Crisis',
      'Sovereign Debt',
      'Bailout',
      'Austerity Measures',
      'Political Turmoil',
    ],
    caseStudy: [
      'The Greek Debt Crisis emerged in 2009 when Greece disclosed severe fiscal mismanagement and mounting public debt, leading to a loss of confidence among investors. This crisis quickly escalated into a full-blown sovereign debt crisis, forcing Greece to seek international financial assistance.',
      'Multiple bailout agreements were reached with the European Union, the European Central Bank, and the International Monetary Fund, accompanied by harsh austerity measures aimed at reducing public spending and restructuring the economy. These measures led to widespread social unrest, protests, and significant political instability.',
      'The crisis not only resulted in massive economic contraction, skyrocketing unemployment, and severe social hardship but also reshaped the political landscape of Greece, contributing to the rise of new political parties and deep divisions within society.',
      'The Greek Debt Crisis has been a subject of extensive debate on fiscal responsibility, the effectiveness of austerity policies, and the impact of global financial integration on national sovereignty. Its aftermath continues to influence economic and political policies in Europe and serves as a cautionary tale for emerging economies worldwide.',
    ],
    duration:
        9, // 2009 - 2018 (approximate period of acute crisis and recovery measures)
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c52',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Arab Spring',
    imageUrl:
        'https://media.npr.org/assets/img/2011/12/17/tunisia_custom-35d572bf67a3883025a98c4376fada55a58950fb.jpg',
    keywords: [
      'Protests',
      'Uprising',
      'Political Reform',
      'Regime Change',
      'Social Justice',
    ],
    caseStudy: [
      'The Arab Spring was a groundbreaking series of protests and uprisings that began in December 2010 in Tunisia and quickly spread throughout the Arab world. Citizens in multiple countries, driven by grievances over political repression, economic hardship, and corruption, took to the streets demanding greater freedom and accountability from their governments.',
      'In countries like Tunisia, Egypt, and Libya, these movements led to dramatic regime changes, while in others, such as Syria and Yemen, the uprisings evolved into prolonged conflicts that continue to affect regional stability. The Arab Spring not only reshaped national governments but also ignited widespread debates about democracy, human rights, and social justice in the modern era.',
      'The movements highlighted the power of grassroots mobilization in the digital age, as social media played a pivotal role in organizing protests and spreading information. Despite its varied outcomes across different nations, the Arab Spring remains a seminal moment in contemporary history that underscores the desire for political and cultural transformation.',
    ],
    duration: 5, // Approximate period: 2010 - 2015
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: false,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c53',
    categories: [
      'ES', // Environmental & Sustainability (primary)
      'LE', // Law & Ethics (secondary)
    ],
    title: 'The Exxon Valdez Oil Spill',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTdxzOl_HwyIUoTJcSchntlREM9mQKGR5mbQ&s',
    keywords: [
      'Oil Spill',
      'Environmental Disaster',
      'Marine Ecology',
      'Legal Liability',
      'Regulatory Reform',
    ],
    caseStudy: [
      'On March 24, 1989, the Exxon Valdez oil tanker, operated by Exxon, struck Bligh Reef in Prince William Sound, Alaska. This tragic accident resulted in the release of approximately 11 million gallons (about 257,000 barrels) of crude oil into the pristine Alaskan waters, marking one of the worst environmental disasters in history.',
      'The spill devastated a vast area of marine and coastal ecosystems. Thousands of miles of shoreline were contaminated, and the spill claimed the lives of hundreds of thousands of seabirds, marine mammals, and fish. The contamination severely disrupted the food chain, leading to long-term ecological damage that is still evident in some areas decades later.',
      'Initial response efforts were hampered by the remote location, harsh weather conditions, and a lack of preparedness, resulting in a delayed and often criticized cleanup operation. The environmental damage was compounded by the challenges of removing oil from sensitive natural habitats, with many species and local communities facing lasting adverse effects.',
      'Legally, the disaster led to a series of high-profile lawsuits. Exxon faced enormous financial liabilities, with courts eventually holding the company accountable for billions of dollars in damages. This legal fallout not only affected Exxon’s operations and reputation but also spurred significant changes in environmental policy and corporate accountability.',
      'One of the lasting legacies of the Exxon Valdez Oil Spill was the passage of the U.S. Oil Pollution Act of 1990. This landmark legislation strengthened regulations on oil transportation and spill response, increased liability for oil companies, and improved federal preparedness for future environmental catastrophes.',
      'The spill remains a cautionary tale about the importance of robust safety protocols, environmental stewardship, and regulatory oversight in the oil industry. It also highlighted the vulnerability of delicate ecosystems and indigenous communities that rely on these natural resources for their livelihood.',
    ],
    duration:
        1, // Immediate crisis in 1989; long-term recovery and legal impact extended over subsequent years
    complexity: Complexity.hard,
    severity: Severity.critical,

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c54',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The September 11 Attacks',
    imageUrl:
        'https://ca-times.brightspotcdn.com/dims4/default/f88f402/2147483647/strip/false/crop/2000x1347+0+0/resize/1486x1001!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F2b%2Fd8%2Fd1cca6577d1a553dfae7588b4d93%2Fla-xpm-photo-2001-sep-12-na-sept-11-attack-201105-01',
    keywords: [
      'Terrorism',
      'Al-Qaeda',
      'World Trade Center',
      'Pentagon',
      'Hijacked Planes',
    ],
    caseStudy: [
      'On September 11, 2001, the United States experienced one of its most devastating terrorist attacks. Nineteen militants associated with al-Qaeda hijacked four commercial airplanes. Two planes were deliberately flown into the Twin Towers of the World Trade Center in New York City, causing both towers to collapse. A third plane struck the Pentagon in Arlington, Virginia, while the fourth, United Airlines Flight 93, crashed into a field in Pennsylvania after passengers attempted to regain control.',
      'The coordinated attacks resulted in the tragic loss of nearly 3,000 lives, with thousands more injured. The sheer scale and suddenness of the event sent shockwaves across the globe, fundamentally altering international security and political dynamics.',
      'In response, the United States launched the War on Terror, initiating military operations in Afghanistan and later in Iraq, and implementing sweeping changes in domestic and international security policies. These measures included the establishment of the Department of Homeland Security and the enactment of the USA PATRIOT Act, aimed at preventing future terrorist acts.',
      'Culturally, 9/11 has had a lasting impact on art, literature, and public consciousness, with numerous memorials and museums dedicated to preserving the memory of the victims and educating future generations about the events of that day. The attacks continue to influence discussions on freedom, security, and the balance between civil liberties and public safety.',
      'The legacy of the September 11 Attacks remains a powerful reminder of the far-reaching consequences of terrorism, reshaping not only U.S. policies but also the global geopolitical landscape for decades to come.',
    ],
    duration:
        0.002, // The attacks occurred on a single day (September 11, 2001)
    complexity: Complexity
        .hard, // Understandability is high due to the multifaceted impact and historical significance
    severity: Severity
        .critical, // The event had catastrophic human, cultural, and geopolitical consequences

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c55',
    categories: [
      'PG', // Politics & Governance (primary, for the governmental response and policy impact)
      'HC', // History & Culture (secondary, for its lasting impact on society and public health narratives)
    ],
    title: 'The Zika Virus Outbreak',
    imageUrl:
        'https://images.newscientist.com/wp-content/uploads/2016/02/f0127511-zika_virus_in_blood_illustration-spl.jpg',
    keywords: [
      'Zika Virus',
      'Public Health Crisis',
      'Microcephaly',
      'Mosquito-borne',
      'Global Health',
    ],
    caseStudy: [
      'The Zika Virus Outbreak emerged in the Americas around 2015, with Brazil becoming the epicenter. Transmitted primarily by Aedes mosquitoes, the virus was linked to a sharp increase in cases of microcephaly—a condition where newborns are born with abnormally small heads—and other neurological disorders such as Guillain-Barré syndrome.',
      'The rapid spread of the virus and its severe health implications prompted the World Health Organization (WHO) to declare a Public Health Emergency of International Concern in February 2016. Governments across the region quickly implemented mosquito control measures, issued travel advisories, and initiated extensive public health campaigns to educate citizens about preventive measures.',
      'The outbreak had far-reaching consequences: affected countries experienced declines in tourism revenue, significant strain on public healthcare systems, and widespread social anxiety. Researchers and public health officials collaborated internationally to accelerate the development of diagnostic tests, vaccines, and innovative vector control strategies.',
      'While the immediate crisis subsided by 2017, the legacy of the Zika outbreak endures, with ongoing studies examining its long-term effects on affected populations and the evolution of mosquito-borne disease management. The outbreak reshaped global health policies, spurred regulatory reforms, and remains a key case study in the challenges of managing emerging infectious diseases in an interconnected world.',
    ],
    duration: 2, // 2015 - 2017 (peak period of the outbreak)
    complexity: Complexity
        .moderate, // The outbreak involved multifaceted public health responses and international collaboration, making it moderately complex
    severity: Severity
        .critical, // Given the severe impact on public health, especially on newborns, and lasting socio-economic repercussions, severity is set as critical

    isLegalCase: false,
    isEthicalCase:
        true, // Ethical concerns regarding public health preparedness and response are prominent
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase:
        true, // Significant scientific research was spurred as a result
    isCulturalCase:
        true, // It has a lasting impact on public health narratives and cultural perceptions of disease
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c56',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The January 6 Capitol Riot',
    imageUrl:
        'https://www.pewresearch.org/wp-content/uploads/sites/20/2022/01/FT_22.01.04_Jan6_feature-jpg.webp?w=1200&h=628&crop=1',
    keywords: [
      'Capitol Riot',
      'Political Violence',
      'US Capitol',
      'Insurrection',
      'January 6, 2021',
    ],
    caseStudy: [
      'On January 6, 2021, as Congress was convened to certify the 2020 Electoral College results, a large group of supporters of then-President Donald Trump stormed the United States Capitol in Washington, D.C. The mob breached security barriers, vandalized offices, and engaged in violent confrontations with law enforcement, marking one of the most significant assaults on the nation’s democratic institutions.',
      'The attack resulted in extensive property damage, multiple injuries to both rioters and police officers, and the tragic loss of several lives. The incident abruptly halted the certification process, plunging the country into a state of shock and sparking a nationwide debate on political extremism, the influence of misinformation, and the vulnerability of public institutions.',
      'In the aftermath, hundreds of individuals were arrested and charged with a variety of offenses ranging from trespassing and disorderly conduct to assault and conspiracy. Federal and local authorities launched comprehensive investigations to determine the extent of the planning behind the riot and to hold those responsible accountable through the legal system.',
      'Culturally, the Capitol Riot has become a defining moment in recent American history, influencing public discourse, media narratives, and even art and literature. It has reshaped discussions about the state of democracy, the role of social media in mobilizing extremist groups, and the need for improved security protocols for public institutions.',
      'The event continues to be analyzed by scholars, policymakers, and the public, serving as a stark reminder of how political polarization and misinformation can lead to real-world violence and the erosion of democratic norms.',
    ],
    duration: 0.002, // The event occurred on a single day (January 6, 2021)
    complexity: Complexity
        .hard, // Multifaceted implications across political, social, and cultural dimensions make it hard to fully grasp
    severity: Severity
        .critical, // High severity due to fatalities, extensive legal consequences, and lasting impact on democratic processes

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c57',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The 2010 Haiti Earthquake',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUdl-bnXjlEtIAZoGuFNfIAfVujd21HlQmQ&s',
    keywords: [
      'Earthquake',
      'Natural Disaster',
      'Humanitarian Crisis',
      'International Aid',
      'Reconstruction',
    ],
    caseStudy: [
      'On January 12, 2010, a devastating 7.0 magnitude earthquake struck Haiti, with its epicenter located near the capital city of Port-au-Prince. The quake unleashed widespread destruction, flattening buildings, crippling infrastructure, and leaving a massive portion of the population homeless.',
      'The immediate impact was catastrophic: official estimates report that over 230,000 people lost their lives, while more than 300,000 were injured, and approximately 1.5 million people were displaced. The disaster severely affected hospitals, schools, and government facilities, hampering rescue and relief efforts during the critical first days.',
      'International aid poured in as governments, NGOs, and humanitarian organizations mobilized to provide emergency relief, medical care, food, and shelter. However, the scale of destruction, combined with Haiti’s pre-existing economic and political challenges, made recovery and reconstruction an enormous, ongoing challenge.',
      'The earthquake exposed deep-seated issues in Haiti’s governance and infrastructure, sparking debates on disaster preparedness, corruption, and the effectiveness of international aid. The slow pace of recovery, coupled with subsequent natural disasters and political instability, has left a lasting impact on the nation’s development and collective memory.',
      'Today, the 2010 Haiti Earthquake is remembered not only for its immediate human tragedy but also as a turning point that reshaped Haiti’s socio-political landscape, influencing policy reforms and the global approach to disaster response and recovery in vulnerable regions.',
    ],
    duration:
        1, // Immediate crisis on January 12, 2010 (with long-term recovery impact)
    complexity: Complexity
        .hard, // Multifaceted issues in disaster response, governance, and international aid make it hard to fully address
    severity: Severity
        .critical, // Catastrophic loss of life and prolonged humanitarian crisis

    isLegalCase: false,
    isEthicalCase:
        true, // Ethical considerations in aid distribution and reconstruction
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c58',
    categories: [
      'TI', // Technology & Innovation (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Samsung Galaxy Note 7 Battery Crisis',
    imageUrl:
        'https://i.guim.co.uk/img/media/4489bb63e0bf4e8f9123803179f1a6514947ff7f/0_193_3500_2100/master/3500.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=8d6b86e4304aa46077b8bd47514bfa98',
    keywords: [
      'Battery Fires',
      'Product Recall',
      'Safety Issues',
      'Technology Failure',
      'Corporate Crisis',
    ],
    caseStudy: [
      'In August 2016, Samsung launched the Galaxy Note 7 as a flagship smartphone, celebrated for its cutting-edge features and performance. However, within weeks, reports surfaced of battery malfunctions, with some devices overheating and even catching fire.',
      'Detailed investigations revealed that the lithium-ion batteries used in the Note 7 were prone to short-circuiting due to design and manufacturing defects. Despite an initial recall and battery replacement program, further incidents forced Samsung to completely discontinue the product.',
      'The crisis led to massive financial losses, estimated in billions, and significantly damaged Samsung’s reputation for quality and safety. The event sparked widespread media coverage and consumer backlash, raising urgent questions about corporate responsibility, product safety standards, and quality control in high-tech manufacturing.',
      'In response, Samsung overhauled its quality assurance protocols, implemented stricter safety testing for battery technology, and worked with global regulatory bodies to prevent similar issues in the future. The Galaxy Note 7 crisis has since become a landmark case study in managing product recalls and the risks inherent in rapid technological innovation.',
    ],
    duration:
        0.2, // Approximately a few months (2016 launch to discontinuation)
    complexity: Complexity
        .moderate, // The issues were complex but understandable with detailed investigation reports available.
    severity: Severity
        .high, // High severity due to significant financial impact and safety concerns, though not catastrophic in loss of life.

    isLegalCase: true, // Involved legal actions and product liability claims.
    isEthicalCase:
        true, // Raised ethical questions about corporate responsibility and consumer safety.
    isBusinessCase:
        true, // Had major financial implications and affected market reputation.
    isSocietalImpactCase: false,
    isScientificCase:
        true, // Involved detailed scientific investigation of battery technology.
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c59',
    categories: [
      'LE', // Law & Ethics (primary)
      'TI', // Technology & Innovation (secondary)
    ],
    title: 'The Apple vs. FBI Encryption Dispute',
    imageUrl:
        'https://static.guim.co.uk/sys-images/Guardian/Pix/audio/video/2016/2/18/1455801740414/KP_1800942_crop_640x480.jpg',
    keywords: [
      'Encryption',
      'Privacy',
      'Digital Rights',
      'FBI',
      'Tech vs. Security',
    ],
    caseStudy: [
      'In early 2016, following the tragic San Bernardino shooting, the FBI demanded that Apple unlock the iPhone of one of the attackers to assist in their investigation. This request ignited a fierce national debate over digital privacy and the role of technology companies in balancing individual rights with national security imperatives.',
      'Apple staunchly argued that building a backdoor into its iOS system would not only compromise the security of millions of users but also set a dangerous precedent for government overreach into private data. The company maintained that any weakening of encryption would ultimately leave all users vulnerable to cybercriminals and other malicious entities.',
      'The legal battle that ensued pitted government agencies against one of the world’s largest tech companies, with courts examining the limits of governmental power in the digital age. Public opinion was divided, as advocates for privacy and civil liberties clashed with those prioritizing law enforcement and security.',
      'Despite the heated legal and public debate, the case was eventually dropped after the FBI discovered an alternative means to access the required data. Nonetheless, the incident left a lasting impact on technology policy, influencing ongoing discussions about encryption, surveillance, and the balance between security and privacy.',
      'The Apple vs. FBI Encryption Dispute remains a landmark case study in the digital era, encapsulating the complex interplay between technological innovation, legal authority, and ethical considerations in an increasingly interconnected world.',
    ],
    duration: 0.5, // The dispute lasted several months in 2016
    complexity: Complexity
        .moderate, // The issues are complex but accessible through public debate and legal proceedings
    severity: Severity
        .high, // High severity due to its profound impact on digital rights and technology policy

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c60',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The 2008 Mumbai Terror Attacks',
    imageUrl:
        'https://static01.nyt.com/images/2016/02/09/world/09India-web/09India-web-superJumbo.jpg',
    keywords: [
      'Terrorism',
      'Coordinated Attacks',
      'Lashkar-e-Taiba',
      'Mumbai',
      'Urban Warfare',
    ],
    caseStudy: [
      'On November 26, 2008, a series of meticulously coordinated terrorist attacks shook Mumbai, India, as militants from the Pakistan-based group Lashkar-e-Taiba launched an assault on multiple key locations. Over a period of approximately 60 hours, the attackers targeted iconic sites such as the Taj Mahal Palace Hotel, Oberoi Trident, a busy railway station, a Jewish community center, and popular local eateries, aiming to maximize chaos and casualties.',
      'The attacks resulted in the tragic loss of at least 174 lives and left over 300 people injured, with many more impacted by the ensuing panic and security lockdowns. The militants employed both firearms and explosive devices, and their operation was characterized by careful planning and rapid execution, exploiting Mumbai’s dense urban landscape to evade immediate containment by security forces.',
      'The prolonged nature of the assault overwhelmed local law enforcement and emergency services, leading to intense firefights and hostage situations that lasted for nearly three days. The city’s infrastructure suffered extensive damage, and the emotional trauma inflicted on the citizens spurred nationwide and global outrage.',
      'In response, the Indian government launched a comprehensive investigation, resulting in numerous arrests and legal proceedings that aimed to dismantle the terrorist network behind the attacks. The event also led to significant changes in India’s counter-terrorism policies, with increased intelligence sharing and heightened security measures across major urban centers.',
      'The 2008 Mumbai Terror Attacks remain a defining moment in contemporary history, symbolizing the vulnerabilities of urban areas to sophisticated terrorist operations and underscoring the importance of coordinated global efforts to combat terrorism. The legacy of this tragedy continues to influence security protocols and public policy debates on both national and international levels.',
    ],
    duration:
        3, // Immediate crisis on November 2008 with long-term repercussions lasting several years
    complexity: Complexity
        .hard, // The incident involves multifaceted security, political, and cultural dimensions, making it hard to fully address
    severity: Severity
        .critical, // The event had catastrophic consequences in terms of loss of life and long-term impact on national security and public confidence

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c61',
    categories: [
      'PG', // Politics & Governance (primary)
      'ES', // Environmental & Sustainability (secondary)
    ],
    title: 'The Texas Power Crisis 2021',
    imageUrl:
        'https://image.cnbcfm.com/api/v1/image/106841395-1613564987356-gettyimages-1231211590-WEATHER.jpeg?v=1613565027',
    keywords: [
      'Power Outage',
      'Winter Storm',
      'Grid Failure',
      'Energy Policy',
      'Infrastructure Vulnerability',
    ],
    caseStudy: [
      'In February 2021, an unprecedented winter storm swept across Texas, triggering a massive power crisis that exposed critical vulnerabilities in the state’s energy infrastructure. Record-low temperatures and a surge in electricity demand for heating led to widespread blackouts affecting millions of residents across the state.',
      'The crisis was marked by the simultaneous failure of multiple energy sources—natural gas, wind, and nuclear—due to inadequate weatherization and outdated infrastructure. With the Texas power grid operating largely independently from the national grid, the state found itself unable to import additional power during the emergency, exacerbating the situation.',
      'As the outage persisted for several days, hundreds of deaths were reported due to hypothermia, carbon monoxide poisoning, and other related causes, while emergency services struggled to provide adequate assistance. The economic impact was severe, with damages estimated in the billions, and the crisis highlighted deep-seated issues in energy management and regulatory oversight.',
      'In the aftermath, state and federal investigations scrutinized the policy decisions that contributed to the disaster, including the deregulated market structure that prioritized cost over reliability. The incident sparked intense debates over the need for a resilient energy infrastructure capable of withstanding extreme weather events, and led to calls for significant reforms in energy policy and grid modernization.',
      'The Texas Power Crisis of 2021 stands as a sobering reminder of the interplay between environmental challenges and policy failures. It has had a lasting impact on public trust, reshaped discussions about climate resilience and energy security, and continues to influence legislative efforts aimed at overhauling the state’s energy system.',
    ],
    duration: 0.1, // Crisis unfolded over a few days in February 2021
    complexity: Complexity
        .moderate, // The issues involve multiple layers of infrastructural and policy failures, making it moderately complex
    severity: Severity
        .high, // High severity due to significant loss of life, economic damage, and long-lasting policy repercussions

    isLegalCase:
        true, // Subsequent investigations and legal actions followed the crisis
    isEthicalCase:
        true, // The crisis raised ethical concerns regarding public safety and the responsibilities of policymakers
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // The event had a profound impact on public trust and societal well-being
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c62',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The 2019–2020 Hong Kong Protests',
    imageUrl:
        'https://c.files.bbci.co.uk/9F86/production/_108283804_gettyimages-1154553368.jpg',
    keywords: [
      'Hong Kong',
      'Pro-Democracy',
      'Extradition Bill',
      'Civil Unrest',
      'Political Protest',
    ],
    caseStudy: [
      'In June 2019, Hong Kong was thrust into a period of intense civil unrest when proposed legislation to amend extradition laws sparked widespread fears of increased interference from mainland China. The bill was seen as a direct threat to the “one country, two systems” framework and the region’s cherished civil liberties.',
      'What began as peaceful protests rapidly escalated into a large-scale pro-democracy movement. Demonstrators organized massive marches, sit-ins, and creative symbolic actions—most notably, the ubiquitous use of umbrellas as both practical shields and emblems of defiance. The protests united diverse groups, from students to professionals, all demanding greater democratic reforms and accountability from the government.',
      'Over the following months, confrontations between protesters and law enforcement intensified. The police response, involving tear gas, rubber bullets, and mass arrests, further fueled public anger and deepened societal divisions. The unrest not only paralyzed daily life and disrupted Hong Kong’s status as a major financial hub but also attracted significant international attention.',
      'The protests triggered a profound debate on Hong Kong’s future. While the government eventually withdrew the contentious extradition bill, protesters’ demands evolved to include calls for broader political reforms and investigations into police conduct. The movement left a lasting legacy on the region’s identity, inspiring cultural expressions and international solidarity, while also reshaping local and global discourse on democratic rights and autonomy.',
    ],
    duration: 1.5, // Approximately 18 months (mid-2019 to early 2020)
    complexity: Complexity
        .hard, // The multifaceted political, legal, and cultural dimensions render it hard to fully grasp
    severity: Severity
        .high, // High severity due to significant societal impact and enduring political ramifications

    isLegalCase:
        true, // Generated legal debates and actions emerged from clashes and government responses
    isEthicalCase:
        true, // Raised deep ethical questions about freedom of expression and state authority
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Significantly altered social dynamics and public trust
    isScientificCase: false,
    isCulturalCase:
        true, // Had a profound cultural impact, influencing art and public discourse
    isCrisisCase:
        true, // Considered a political crisis with far-reaching implications
  ),
  const CaseStudy(
    id: 'c63',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Russian Invasion of Ukraine (2022)',
    imageUrl:
        'https://cdn.britannica.com/46/231946-050-31CC461B/Russia-Ukraine-war-Ukrainian-servicemen-Kyiv-2022.jpg',
    keywords: [
      'Russian Invasion',
      'Ukraine War',
      'Geopolitical Crisis',
      'International Sanctions',
      'Military Conflict',
    ],
    caseStudy: [
      'On February 24, 2022, Russia launched a full-scale military invasion of Ukraine, dramatically escalating the conflict that had simmered since 2014. The invasion, which began with coordinated attacks across multiple fronts, has led to widespread devastation, significant loss of life, and the displacement of millions of civilians.',
      'Ukrainian forces, despite being outnumbered, have mounted a resilient defense using a combination of conventional tactics and asymmetric warfare, leading to protracted battles in urban centers and rural areas alike. The conflict has disrupted global supply chains, particularly in energy and food sectors, as Ukraine is a major grain exporter and Russia a key energy provider.',
      'The international community responded swiftly with severe economic sanctions aimed at crippling Russia’s financial and energy sectors, while diplomatic efforts have been ongoing to negotiate a ceasefire amid deep-seated mistrust between the involved parties. These measures, along with global humanitarian aid, underscore the war’s profound impact on regional and global stability.',
      'Culturally, the invasion has galvanized Ukrainian national identity and sparked a global movement of solidarity, with citizens and governments worldwide rallying in support of Ukraine. The conflict has not only reshaped Eastern European geopolitics but has also reinvigorated debates over sovereignty, international law, and the future of global security.',
      'The Russian Invasion of Ukraine continues to evolve, with long-term ramifications expected to influence international relations, economic policies, and the cultural fabric of the region for years to come.',
    ],
    duration: 1, // Ongoing conflict, with immediate impact spanning 2022-2023
    complexity: Complexity
        .hard, // The conflict involves multifaceted political, historical, and military dimensions
    severity: Severity
        .critical, // Critical severity due to massive humanitarian, economic, and geopolitical impacts

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c64',
    categories: [
      'FE', // Finance & Economics (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'The Suez Canal Blockage by Ever Given',
    imageUrl:
        'https://www.morethanshipping.com/wp-content/uploads/2023/07/suez-canal-blockage-report-mts.jpg',
    keywords: [
      'Suez Canal',
      'Ever Given',
      'Trade Disruption',
      'Supply Chain',
      'Global Economics',
    ],
    caseStudy: [
      'In March 2021, the massive container ship Ever Given became wedged in the Suez Canal, one of the world’s most critical waterways for international trade. The ship’s grounding blocked the canal for nearly six days, causing a significant backup of vessels and disrupting the flow of goods between Asia and Europe.',
      'The incident resulted in immediate and widespread economic repercussions, with billions of dollars in global trade being delayed daily. Shipping companies, port operators, and industries dependent on timely delivery of goods faced massive logistical challenges, prompting urgent reassessments of supply chain resilience.',
      'This blockage highlighted the fragility of global trade routes and the high stakes involved in maritime logistics, as even a single vessel’s mishap can ripple across the world economy. It also sparked debates among policymakers about the need for improved infrastructure, better contingency planning, and potential regulatory changes to prevent similar disruptions in the future.',
      'The Ever Given was eventually refloated after extensive salvage efforts, but the event remains a vivid example of how critical choke points in global supply chains can trigger far-reaching economic and political consequences.',
    ],
    duration: 0.02, // Approximately 6 days (0.02 years)
    complexity: Complexity
        .moderate, // Complex in terms of global economic impact and logistical challenges, yet understandable through detailed analysis
    severity: Severity
        .high, // High severity due to significant financial losses and global trade disruption, though not catastrophic in terms of human life

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c65',
    categories: [
      'FE', // Finance & Economics (primary)
      'TI', // Technology & Innovation (secondary)
    ],
    title: 'The Global Semiconductor Chip Shortage',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbvy-IljNga6TdHrqaqEzRO1BylIc9e1TAuQ&s',
    keywords: [
      'Semiconductor Shortage',
      'Supply Chain Disruption',
      'Electronics',
      'Automotive Impact',
      'Global Trade',
    ],
    caseStudy: [
      'Starting in 2020 and intensifying into 2021, the global semiconductor chip shortage emerged as a critical supply chain disruption that affected industries worldwide. The crisis was fueled by an unprecedented surge in demand for consumer electronics amid the COVID-19 pandemic, alongside production constraints and escalating geopolitical tensions.',
      'Major semiconductor manufacturers found themselves unable to scale production quickly enough to meet soaring demand. This imbalance led to severe delays in production across multiple sectors—most notably in the automotive industry, where vehicle manufacturers were forced to halt or scale back production lines, and in consumer electronics, where delays affected everything from smartphones to computers.',
      'The shortage exposed critical vulnerabilities in global supply chains, prompting governments and corporations to re-evaluate their manufacturing and stockpiling strategies. In response, many nations launched initiatives to boost domestic semiconductor production, and companies accelerated investments in new fabrication facilities and technology upgrades to mitigate future risks.',
      'The global chip shortage not only led to significant financial losses and operational disruptions but also reshaped long-term strategies in supply chain management and international trade policies. Its effects continue to influence how industries approach manufacturing resilience, innovation, and diversification in a highly interconnected global economy.',
    ],
    duration: 2, // Approximately 2020 - 2022
    complexity: Complexity
        .moderate, // The crisis involves multifaceted supply chain, demand, and geopolitical factors, making it moderately complex.
    severity: Severity
        .high, // High severity due to significant disruptions in global industry and economic repercussions.

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: true,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c66',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Beirut Explosion',
    imageUrl:
        'https://www.hrw.org/sites/default/files/styles/embed_xxl/public/media_2020/08/202008mena_lebanon_explosions.jpg?itok=ljdnf0Tx',
    keywords: [
      'Beirut Explosion',
      'Ammonium Nitrate',
      'Port Disaster',
      'Government Mismanagement',
      'Lebanon',
    ],
    caseStudy: [
      'On August 4, 2020, a catastrophic explosion rocked the port of Beirut, Lebanon, when approximately 2,750 tonnes of ammonium nitrate detonated due to prolonged negligent storage. The explosion obliterated large sections of the city, leaving over 200 people dead and thousands injured while displacing an estimated 300,000 residents.',
      'The immediate aftermath saw widespread devastation: entire neighborhoods were flattened, critical infrastructure was destroyed, and emergency services were overwhelmed. The blast not only inflicted severe human tragedy but also severely impacted Beirut’s economy, further destabilizing an already fragile nation facing years of political and economic turmoil.',
      'Investigations revealed that the ammonium nitrate had been stored unsafely for years at the port, highlighting gross regulatory failures and rampant corruption among public officials. This revelation sparked public outrage and deepened mistrust in the government’s ability to safeguard its citizens.',
      'In response, international aid poured in, and the Lebanese government faced intense pressure to reform its safety regulations and address systemic corruption. The Beirut Explosion has since become a watershed moment in Lebanese history, symbolizing the consequences of governmental neglect and the urgent need for institutional reform.',
      'The event’s profound impact continues to influence Lebanon’s political discourse and cultural identity, serving as a stark reminder of the critical importance of accountability and effective governance in protecting public safety.',
    ],
    duration:
        0.002, // The explosion was an instantaneous event on August 4, 2020
    complexity: Complexity
        .moderate, // The incident involves multifaceted issues in governance, public safety, and societal impact, making it moderately complex
    severity: Severity
        .high, // High severity due to significant human loss, economic damage, and lasting political ramifications

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c67',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Oklahoma City Bombing',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkYUNGUUoT5wIZMaVX3QJqVZLHtKu83lf2DQ&s',
    keywords: [
      'Domestic Terrorism',
      'Murrah Federal Building',
      'Timothy McVeigh',
      'Oklahoma City',
      'Extremism',
    ],
    caseStudy: [
      'On April 19, 1995, a devastating act of domestic terrorism shook the United States when a truck bomb was detonated outside the Alfred P. Murrah Federal Building in Oklahoma City. Orchestrated by Timothy McVeigh and his accomplice Terry Nichols, the explosion resulted in the tragic loss of 168 lives and injured over 680 people.',
      'The attack was intended as a violent protest against what the perpetrators viewed as excessive federal power and government overreach. The bombing not only caused extensive physical destruction of the building and its surroundings but also left an indelible mark on the national psyche.',
      'In the chaotic aftermath, emergency responders worked under harrowing conditions to rescue survivors and recover victims, while investigators launched an unprecedented domestic terrorism probe. The subsequent trial led to the conviction and long-term incarceration of McVeigh and Nichols, and sparked nationwide discussions about domestic extremism and security.',
      'The Oklahoma City Bombing catalyzed major reforms in U.S. law enforcement and counterterrorism strategies, prompting enhancements in intelligence gathering, emergency preparedness, and security protocols for federal buildings. It also spurred a cultural reckoning, with memorials and public commemorations ensuring that the victims and the lessons learned are not forgotten.',
      'Today, the event remains a somber reminder of the dangers posed by extremist ideologies within a society and underscores the ongoing need for vigilance, unity, and effective policies to combat domestic terrorism.',
    ],
    duration: 0.002, // The event occurred on a single day (April 19, 1995)
    complexity: Complexity
        .moderate, // The event is moderately complex with clear political, legal, and cultural ramifications
    severity: Severity
        .high, // High severity due to significant loss of life and its enduring impact on national security and societal resilience

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c68',
    categories: [
      'BS', // Business & Startups (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Fyre Festival Disaster',
    imageUrl:
        'https://i.cbc.ca/1.4090348.1493396216!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/fyre-festival-tweet.jpg',
    keywords: [
      'Fyre Festival',
      'Event Fraud',
      'Influencer Culture',
      'Corporate Misconduct',
      'Social Media Hype',
    ],
    caseStudy: [
      'Fyre Festival was promoted as a revolutionary luxury music festival scheduled for April 2017 on Great Exuma in the Bahamas. Marketed as an exclusive, high-end event with gourmet food, luxurious accommodations, and top-tier musical performances, it garnered massive attention on social media, driven by endorsements from prominent influencers.',
      'In stark contrast to its lavish promises, festival-goers arrived to find disaster relief tents, meager food rations, and a complete lack of basic infrastructure. The promised villas were nowhere to be seen, and attendees were left stranded in deplorable conditions. The organizers had grossly mismanaged funds and logistics, resulting in a catastrophic failure of the event.',
      'Investigations later revealed that the event was built on fraudulent claims, with organizers, led by entrepreneur Billy McFarland (and in association with celebrity Ja Rule), misleading investors, sponsors, and ticket holders about the event’s scale and quality. As the chaos unfolded, lawsuits piled up, and McFarland was eventually arrested and convicted for fraud.',
      'The fallout from Fyre Festival was swift and severe—both financially and reputationally. The disaster not only exposed the vulnerabilities of relying on influencer marketing without substance but also ignited a global conversation about corporate ethics, transparency in event planning, and the pitfalls of modern digital hype.',
      'Today, the Fyre Festival disaster stands as a cautionary tale in the business world and popular culture, serving as a reminder of the critical importance of ethical practices, robust planning, and accountability in the face of digital marketing and luxury branding.',
    ],
    duration: 0.1, // The event collapsed within a few days in April 2017
    complexity: Complexity
        .moderate, // The case involves multiple facets including business fraud, social media dynamics, and legal issues, making it moderately complex
    severity: Severity
        .high, // High severity due to significant financial losses, reputational damage, and legal ramifications, though no loss of life occurred

    isLegalCase: true, // Involved extensive legal actions and criminal charges
    isEthicalCase:
        true, // Raised serious ethical concerns regarding misrepresentation and fraud
    isBusinessCase:
        true, // Directly impacted the business and events industry, with long-term implications for corporate governance
    isSocietalImpactCase:
        true, // Influenced public perception of influencer culture and modern marketing practices
    isScientificCase: false,
    isCulturalCase:
        true, // Became a cultural phenomenon and widely discussed in media and documentaries
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c69',
    categories: [
      //'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
      'HM'
    ],
    title: 'The West Africa Ebola Outbreak',
    imageUrl:
        'https://d3i6fh83elv35t.cloudfront.net/newshour/app/uploads/2014/10/456999956-1024x702.jpg',
    keywords: [
      'Ebola Outbreak',
      'West Africa',
      'Public Health Crisis',
      'International Response',
      'Viral Epidemic',
    ],
    caseStudy: [
      'The West Africa Ebola Outbreak was a devastating public health crisis that unfolded from 2013 to 2016, primarily affecting Guinea, Liberia, and Sierra Leone. It remains the most widespread Ebola epidemic in history, with over 28,000 reported cases and more than 11,000 fatalities.',
      'The epidemic began in rural Guinea and quickly spread to densely populated urban areas, overwhelming already fragile healthcare infrastructures. The lack of resources, combined with widespread mistrust between local communities and health officials, exacerbated the spread of the virus and hindered early containment efforts.',
      'In response, the World Health Organization declared the outbreak a Public Health Emergency of International Concern, mobilizing global aid and expertise. International governments, non-governmental organizations, and local agencies collaborated to deploy emergency medical teams, establish treatment centers, and launch public education campaigns on prevention.',
      'The crisis also led to significant socio-economic disruptions: traditional burial practices were upended to prevent further infections, and entire communities faced long-term setbacks due to the loss of life, labor, and public trust in healthcare systems.',
      'Beyond its immediate human and economic toll, the West Africa Ebola Outbreak spurred critical advancements in medical research, particularly in vaccine development and treatment protocols, which have since informed responses to subsequent epidemics. The outbreak’s legacy endures in global health policy reforms aimed at strengthening epidemic preparedness and response in low-resource settings.',
    ],
    duration: 3, // Approximately 2013 - 2016
    complexity: Complexity
        .hard, // Involves multifaceted challenges in healthcare infrastructure, socio-cultural dynamics, and international coordination
    severity: Severity
        .critical, // Critical severity due to high mortality, extensive disruption, and lasting impacts on affected societies

    isLegalCase: false,
    isEthicalCase:
        true, // Raised ethical issues regarding global health resource allocation and response equity
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Major disruption to communities and long-term socio-economic consequences
    isScientificCase:
        true, // Stimulated significant scientific research and accelerated vaccine development
    isCulturalCase:
        true, // Altered traditional practices and had profound cultural impacts in the affected regions
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c70',
    categories: [
      'FE', // Finance & Economics (primary)
      //'PG', // Politics & Governance (secondary)
      'TI'
    ],
    title: 'The Silicon Valley Bank Collapse',
    imageUrl:
        'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202303/svb22232-sixteen_nine.jpg?size=948:533',
    keywords: [
      'Silicon Valley Bank',
      'Bank Run',
      'Financial Crisis',
      'Tech Sector',
      'Regulatory Intervention',
    ],
    caseStudy: [
      'In March 2023, Silicon Valley Bank (SVB), a pivotal financial institution serving the technology and startup ecosystem, abruptly collapsed after a massive bank run. The bank’s aggressive investment strategy, particularly its heavy exposure to long-term securities amid a period of rising interest rates, left it vulnerable when the tech sector experienced a downturn.',
      'As rumors about its financial instability spread, depositors rushed to withdraw their funds, leading to a liquidity crisis that quickly spiraled out of control. Within a matter of days, SVB found itself insolvent, triggering emergency measures by U.S. regulators to protect depositors and prevent a broader financial contagion.',
      'The collapse sent shockwaves through global financial markets and raised serious concerns about risk management practices in banks that serve niche industries. U.S. authorities, including the FDIC and the Federal Reserve, intervened by securing deposits and taking control of the bank’s assets to stabilize the situation and restore confidence in the financial system.',
      'This event has since sparked widespread debates over the impact of monetary policy, regulatory oversight, and the need for diversification in banking portfolios—especially for institutions heavily linked to volatile sectors like technology. The Silicon Valley Bank collapse serves as a stark reminder of how rapidly changing economic conditions can expose underlying vulnerabilities in the financial system.',
    ],
    duration: 0.02, // The crisis unfolded over a few days in March 2023
    complexity: Complexity
        .moderate, // Involves multiple economic and regulatory factors, making it moderately complex
    severity: Severity
        .high, // High severity due to significant market repercussions and financial disruption, though without immediate catastrophic loss of life

    isLegalCase: true, // Led to legal scrutiny and regulatory actions
    isEthicalCase: false,
    isBusinessCase: true, // Direct impact on the tech and banking sectors
    isSocietalImpactCase:
        true, // Broader implications on public confidence and economic stability
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c71',
    categories: [
      'FE', // Finance & Economics (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Collapse of FTX Crypto Exchange',
    imageUrl:
        'https://images.theconversation.com/files/495726/original/file-20221116-12-324kxc.jpg?ixlib=rb-4.1.0&rect=24%2C251%2C4812%2C2406&q=45&auto=format&w=1356&h=668&fit=crop',
    keywords: [
      'FTX',
      'Crypto Collapse',
      'Liquidity Crisis',
      'Bankruptcy',
      'Fraud Allegations',
    ],
    caseStudy: [
      'In November 2022, FTX, one of the world’s largest cryptocurrency exchanges, experienced a rapid and catastrophic collapse that sent shockwaves through the financial markets. Initially regarded as a reliable platform for digital asset trading, FTX’s downfall was precipitated by a liquidity crisis and revelations of serious mismanagement and alleged fraud.',
      'The crisis began when questions arose about the financial practices at FTX, particularly the commingling of customer funds with those of its sister hedge fund, Alameda Research. As investors and customers rushed to withdraw their assets, the exchange found itself unable to meet the sudden surge in demand for cash, triggering a classic bank run in the crypto space.',
      'Within days, FTX declared bankruptcy, leaving billions of dollars in digital assets in limbo and causing a massive loss of investor confidence across the industry. Regulatory bodies around the world quickly initiated investigations, and legal proceedings followed, targeting FTX’s founder, Sam Bankman-Fried, and other top executives for alleged financial misconduct.',
      'The collapse of FTX not only led to enormous financial losses but also sparked a broader crisis of confidence in the cryptocurrency market. It forced investors, regulators, and industry leaders to confront critical questions about transparency, risk management, and the need for robust regulatory oversight in an increasingly complex and fast-moving digital asset ecosystem.',
      'Today, the FTX collapse serves as a stark reminder of the vulnerabilities inherent in emerging financial technologies and the potential consequences of unchecked corporate governance failures in the crypto industry.',
    ],
    duration: 0.05, // Crisis unfolded over a few days in November 2022
    complexity: Complexity
        .hard, // The event involves multifaceted financial, technological, and legal aspects, making it hard to fully comprehend
    severity: Severity
        .high, // High severity due to enormous financial losses, market disruption, and long-term regulatory and legal ramifications

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c72',
    categories: [
      'TI', // Technology & Innovation (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Sony Pictures Hack',
    imageUrl:
        'https://platform.vox.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/15810614/hacking-sony.0.1546214858.png?quality=90&strip=all&crop=0%2C15.095986038394%2C100%2C69.808027923211&w=1200',
    keywords: [
      'Cyberattack',
      'Data Breach',
      'Sony Pictures',
      'North Korea',
      'Political Retaliation',
    ],

    caseStudy: [
      'In November 2014, Sony Pictures Entertainment fell victim to a major cyberattack that exposed sensitive internal data including confidential emails, personal employee information, and unreleased films. The attack was highly sophisticated, using advanced malware to infiltrate Sony’s network, and it resulted in a significant breach of corporate and personal data.',
      'The hack was widely attributed to North Korean actors, who were believed to have launched the attack in response to Sony’s release of "The Interview," a satirical film depicting a fictional assassination attempt on the North Korean leader. This connection sparked international controversy and heightened tensions between the U.S. and North Korea.',
      'The fallout from the attack was extensive: it led to substantial financial losses for Sony, forced the cancellation of the film’s theatrical release in some regions, and resulted in long-term reputational damage. The incident also exposed vulnerabilities in corporate cybersecurity practices, prompting many companies worldwide to re-evaluate and strengthen their digital defenses.',
      'In the aftermath, legal and political debates ensued regarding cyberwarfare, state-sponsored hacking, and the balance between national security and corporate transparency. The Sony Pictures hack remains a landmark case that continues to influence global cybersecurity policies and international relations in the digital age.',
    ],
    duration: 0.02, // The crisis unfolded over a few days in November 2014
    complexity: Complexity
        .moderate, // Involves multifaceted technological, legal, and political dimensions that are moderately complex
    severity: Severity
        .high, // High severity due to significant financial losses, international political repercussions, and lasting impacts on cybersecurity practices

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c73',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The 2021 Myanmar Military Coup',
    imageUrl:
        'https://cdn.britannica.com/97/263897-050-21B241DA/Myanmar-February-2021-military-coup-Numbers-of-people-gather-to-protest-against-a-military-coup-in-Mandalay-Myanmar-February-22-2021-Coup-detat.jpg',
    keywords: [
      'Myanmar Coup',
      'Military Takeover',
      'Aung San Suu Kyi',
      'Civil Disobedience',
      'Political Crisis',
    ],
    caseStudy: [
      'On February 1, 2021, the military of Myanmar, known as the Tatmadaw, executed a coup by detaining the country’s elected leaders, including State Counsellor Aung San Suu Kyi and President Win Myint. This action abruptly halted the country’s democratic transition following the November 2020 general election, which was widely recognized as free and fair by the international community.',
      'The military justified the coup by alleging widespread electoral fraud—a claim that was largely dismissed by independent observers. In response, millions of citizens across Myanmar mobilized in a massive civil disobedience movement, staging protests, strikes, and acts of resistance against the military regime.',
      'The crackdown by security forces was swift and often violent, resulting in numerous casualties, mass arrests, and a deepening humanitarian crisis. The coup not only disrupted political processes but also led to severe economic downturns, widespread social instability, and the displacement of thousands of citizens.',
      'Internationally, the coup sparked condemnation and led to the imposition of targeted sanctions by Western nations and regional bodies. Ongoing debates center on the legality of the military takeover, the ethical implications of suppressing democratic freedoms, and the long-term impact on Myanmar’s cultural and social fabric.',
      'As resistance efforts continue—including the emergence of a parallel government and armed insurgencies—the 2021 Myanmar Military Coup remains a pivotal moment in Southeast Asian history, symbolizing both the resilience of the populace and the challenges of restoring democratic governance in the face of authoritarian power.',
    ],
    duration:
        1, // The coup began in February 2021 and its effects continue to evolve
    complexity: Complexity
        .hard, // Involves multifaceted political, social, and humanitarian dimensions
    severity: Severity
        .critical, // Critical severity due to extensive human rights abuses, political instability, and long-term societal impact

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c74',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The U.S. Withdrawal from Afghanistan (2021)',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqqIeMKsRA7zPQzyFKi5yQ8YEUHtPrZ2TLGA&s',
    keywords: [
      'Afghanistan',
      'U.S. Withdrawal',
      'Taliban Takeover',
      'Kabul Airport Chaos',
      'Political Crisis',
    ],
    caseStudy: [
      'In August 2021, the United States completed its military withdrawal from Afghanistan after nearly two decades of involvement that began in the aftermath of 9/11. The rapid pullout led to the swift collapse of the Afghan government and security forces, enabling the Taliban to seize control of the country in a matter of weeks.',
      'The withdrawal triggered chaotic scenes at Kabul’s Hamid Karzai International Airport, where thousands of desperate Afghans attempted to flee the country amid widespread fear of the Taliban’s return. The abrupt power vacuum and lack of a robust contingency plan resulted in significant human suffering, mass displacement, and a severe humanitarian crisis.',
      'Internationally, the event sparked intense debate and criticism over U.S. foreign policy, highlighting strategic missteps and the ethical implications of ending a long-term military engagement without securing a stable transition. The withdrawal has since reshaped global geopolitical dynamics, raising questions about the future of intervention strategies and the responsibilities of major powers in conflict resolution.',
      'The legacy of the U.S. withdrawal from Afghanistan is marked by both immediate tragedy and long-term consequences: the rapid Taliban takeover, ongoing insecurity, and a deep-seated crisis of confidence in international military commitments. It remains a pivotal moment in modern history that continues to influence policy discussions on military intervention, humanitarian responsibility, and global security.',
    ],
    duration: 0.2, // The key events unfolded over a few weeks in August 2021
    complexity: Complexity
        .hard, // Involves multifaceted political, humanitarian, and strategic challenges
    severity: Severity
        .critical, // Critical severity due to massive humanitarian impact and profound geopolitical ramifications

    isLegalCase: false,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c75',
    categories: [
      'HC', // History & Culture (primary)
      'PG', // Politics & Governance (secondary, if necessary)
      'ES'
    ],
    title: 'The 2010 Chilean Mining Accident',
    imageUrl:
        'https://cloudinary.hbs.edu/hbsit/image/fetch/q_auto,c_fill,ar_572:382,g_auto/f_webp/https%3A%2F%2Fimages.ctfassets.net%2Fbeh2ph2tgbqk%2F2u4NMKkpbnCy0bNjV5Wjqi%2F90783bb2206cd55223dc1460b269e303%2Fmine-disaster.png',
    keywords: [
      'Chilean Mining Accident',
      '33 Miners',
      'Rescue Operation',
      'San José Mine',
      'Global Solidarity',
    ],
    caseStudy: [
      'In August 2010, a catastrophic rockfall at the San José copper-gold mine near Copiapó, Chile, trapped 33 miners in an underground labyrinth for a staggering 69 days. With access cut off and conditions deteriorating, the miners faced extreme darkness, limited food and water, and uncertain prospects of rescue.',
      'After 17 days, rescuers located the miners, igniting one of the most remarkable rescue operations in modern history. International teams of engineers, drilling experts, and emergency responders collaborated to design and deploy a specialized rescue capsule named “Fénix.” This meticulously coordinated effort involved overcoming immense technical challenges in an unstable underground environment.',
      'On October 13, 2010, the world watched in awe as all 33 miners were brought safely to the surface in a dramatic and emotionally charged rescue that lasted several hours. The successful operation not only saved lives but also symbolized global hope and solidarity, inspiring widespread media coverage and public admiration.',
      'In the aftermath, the incident led to sweeping reforms in mining safety regulations and emergency response protocols, both in Chile and internationally. It raised profound questions about worker safety, corporate responsibility, and the importance of international cooperation during crises. The rescue has since become a powerful cultural symbol of resilience and human ingenuity in the face of adversity.',
    ],
    duration: 0.19, // Approximately 69 days, expressed as roughly 0.19 years
    complexity: Complexity
        .moderate, // Moderately complex due to the engineering challenges and coordinated rescue efforts
    severity: Severity
        .high, // High severity given the life-threatening nature of the incident and its profound impact on safety protocols

    isLegalCase:
        true, // Prompted legal and regulatory investigations into mining safety practices
    isEthicalCase:
        true, // Raised critical ethical issues regarding worker safety and corporate responsibility
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Had a significant global societal impact and inspired widespread international solidarity
    isScientificCase:
        true, // Involved extensive scientific and engineering innovation for the rescue operation
    isCulturalCase:
        true, // Became a cultural phenomenon and enduring symbol of hope and resilience
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c76',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Charlie Hebdo Attack',
    imageUrl:
        'https://c.files.bbci.co.uk/3C5A/production/_116105451_gettyimages-1078753054.jpg',
    keywords: [
      'Charlie Hebdo',
      'Terrorism',
      'Freedom of Speech',
      'Mass Shooting',
      'Islamic Extremism',
    ],
    caseStudy: [
      'On January 7, 2015, a coordinated terrorist attack targeted the offices of the French satirical magazine Charlie Hebdo in Paris. Two gunmen, armed with assault rifles and wearing tactical gear, stormed the premises and opened fire, killing 12 individuals including prominent cartoonists, journalists, and police officers, while injuring many others.',
      'The attackers claimed their motive was retaliation for Charlie Hebdo’s controversial depictions of the Prophet Muhammad, a stance that sparked a heated global debate about the limits of free expression versus respect for religious beliefs. The brutal nature of the attack shocked not only France but the entire world, leading to an outpouring of solidarity for the victims and a renewed commitment to protecting freedom of speech.',
      'In the aftermath, the French government, along with international partners, intensified counterterrorism measures and increased security protocols to prevent further such attacks. The incident also fueled discussions in media and academia on the role of satire in a democratic society, the ethical implications of provocative art, and the challenges of balancing national security with civil liberties.',
      'The Charlie Hebdo attack has since become a defining moment in contemporary history, symbolizing both the vulnerability of free expression in the face of extremism and the resilience of democratic values. It continues to influence policy debates, cultural discussions, and the global fight against terrorism.',
    ],
    duration: 0.002, // The event occurred on a single day (January 7, 2015)
    complexity: Complexity
        .moderate, // Involves moderately complex political, ethical, and cultural dimensions
    severity: Severity
        .high, // High severity due to significant loss of life and lasting global impact on discourse about free speech and terrorism

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: false,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c77',
    categories: [
      'EL', // Education & Learning (primary)
    ],
    title: 'The Rise of MOOCs: Transforming Global Education',
    imageUrl:
        'https://media.licdn.com/dms/image/v2/D5612AQFM_cINh_1mbA/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1716218768857?e=2147483647&v=beta&t=su9IJqhFyKe-iXsxkF5a2sWkMGaBWMe9zzY76OKnSIw',
    keywords: [
      'MOOCs',
      'Online Learning',
      'Digital Education',
      'Coursera',
      'edX',
      'Accessibility',
    ],
    caseStudy: [
      'Around 2012, Massive Open Online Courses (MOOCs) emerged as a revolutionary innovation in education. Platforms such as Coursera, edX, and Udacity were launched with the ambitious goal of democratizing education by providing free or low-cost access to courses from top universities, enabling learners worldwide to engage with high-quality content irrespective of their geographical or financial limitations.',
      'MOOCs quickly gained global traction, attracting millions of students and professionals seeking lifelong learning opportunities and career advancement. They broke down traditional barriers to education, offering diverse subjects ranging from computer science and engineering to humanities and business. This new model not only broadened access but also forced conventional academic institutions to rethink their approaches, leading many to integrate online components into their curricula.',
      'Despite their transformative potential, MOOCs encountered several challenges. Issues such as low course completion rates, difficulties in ensuring deep engagement, accreditation uncertainties, and questions regarding the sustainability of free models emerged as significant hurdles. In response, platforms began to innovate by incorporating interactive elements, offering paid certifications, and establishing partnerships with accredited institutions to enhance credibility and learner outcomes.',
      'The evolution of MOOCs has had a profound impact on global education. They have spurred a broader acceptance of online learning, accelerated the development of hybrid learning models—especially highlighted during the COVID-19 pandemic—and fostered a vibrant ecosystem where digital education continuously evolves. MOOCs have not only changed how knowledge is disseminated and consumed but have also empowered millions by providing skills and learning opportunities that were once out of reach.',
      'Today, MOOCs remain at the forefront of educational innovation, symbolizing both the potential and challenges of digital learning in the 21st century. Their ongoing evolution continues to shape global academic landscapes and set new benchmarks for educational accessibility and quality.',
    ],
    duration: 10, // Approximately 2012 to present (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to multifaceted changes in educational delivery and business models
    severity: Severity
        .medium, // Medium severity given their transformative impact on education without catastrophic consequences

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: true,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c78',
    categories: [
      'EL', // Education & Learning (primary)
    ],
    title: 'The Global Shift to Remote Learning During COVID-19',
    imageUrl:
        'https://assets.weforum.org/article/image/responsive_large_yMTDCpnSgHybsTgsvcOM7okUFY-QnelVfa_c9bj5ql0.JPG',
    keywords: [
      'Remote Learning',
      'Online Education',
      'COVID-19',
      'Distance Education',
      'Digital Transformation',
    ],
    caseStudy: [
      'In early 2020, the onset of the COVID-19 pandemic forced a sudden and unprecedented global shift from traditional classroom-based education to remote learning. Governments worldwide imposed lockdowns and school closures, compelling educational institutions—from primary schools to universities—to pivot to online platforms almost overnight.',
      'This rapid transition exposed significant challenges, including limited access to technology for many students, disparities in digital connectivity, and the need for educators to quickly adapt to virtual teaching methods. Despite these obstacles, schools and universities invested heavily in digital tools, online learning management systems, and teacher training to maintain educational continuity.',
      'The shift to remote learning not only redefined the delivery of education but also sparked innovative approaches such as blended learning models, interactive virtual classrooms, and the use of artificial intelligence to personalize learning experiences. Although the initial phase was marked by widespread disruption and uncertainty, the crisis accelerated long-term digital transformation in education and highlighted the importance of digital literacy and equitable access to technology.',
      'Moreover, the move to online education has influenced policy discussions on the future of learning, prompting debates about the role of traditional schooling versus digital platforms, and raising questions about educational equity, student engagement, and assessment methods in a virtual environment. The legacy of this transformation continues to shape global educational practices and strategic planning for future disruptions.',
    ],
    duration: 2, // Approximately 2020 - 2022 (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to the interplay of technological, pedagogical, and equity challenges
    severity: Severity
        .medium, // Medium severity, reflecting significant educational disruption and long-term societal impact without immediate catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Raised ethical issues around digital equity and access to quality education
    isBusinessCase:
        true, // Impacted EdTech industries and spurred new business models in online education
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase:
        true, // Influenced cultural perceptions of education and learning environments
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c79',
    categories: [
      'EL', // Education & Learning (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Finnish Education System Reform',
    imageUrl:
        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202304/education-sixteen_nine.jpeg?VersionId=2ZJTw9nd.FezBxiL3JjlB4NesX68xKsG',
    keywords: [
      'Finnish Education',
      'Education Reform',
      'Teacher Training',
      'Equity',
      'PISA Excellence',
    ],
    caseStudy: [
      'Over the past several decades, Finland has transformed its education system into one of the world’s most successful and equitable models. Beginning in the 1970s, a series of reforms focused on investing heavily in teacher training, reducing class sizes, and creating a student-centered learning environment. Finnish educators are required to hold master’s degrees, ensuring that teaching is regarded as a highly respected profession.',
      'The Finnish model minimizes standardized testing and instead emphasizes continuous assessment, creativity, and critical thinking. The curriculum is designed to balance academic subjects with arts, physical education, and life skills, fostering a holistic development for students. This approach has led to consistent high rankings in international assessments such as the Programme for International Student Assessment (PISA).',
      'Equity is at the core of Finland’s educational philosophy. The government ensures that all students, regardless of socio-economic background, have access to high-quality education. Comprehensive welfare support—including free meals, school materials, and healthcare—helps level the playing field and promotes social cohesion.',
      'The success of the Finnish education reform has not only produced impressive academic outcomes but has also influenced global discussions on educational best practices. Other countries looking to improve their education systems often look to Finland as a benchmark for fostering both excellence and equity in education.',
    ],
    duration:
        5, // Reflects the ongoing evolution and sustained impact over the past five decades
    complexity: Complexity
        .simple, // Considered relatively simple and intuitive in design compared to more rigid standardized systems
    severity: Severity
        .medium, // Medium severity as the reforms significantly impacted society without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes equal access to quality education and raises ethical standards
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Major influence on societal values and global education practices
    isScientificCase: false,
    isCulturalCase:
        true, // Has reshaped cultural perceptions of education and social welfare
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c80',
    categories: [
      'EL', // Education & Learning (primary)
    ],
    title: 'One Laptop per Child Initiative',
    imageUrl:
        'https://larrycuban.wordpress.com/wp-content/uploads/2018/04/olpc-2-1.jpg?w=584',
    keywords: [
      'One Laptop per Child',
      'Digital Learning',
      'Educational Technology',
      'Low-Cost Laptops',
      'Developing Countries',
    ],
    caseStudy: [
      'Launched in 2005 by the MIT Media Lab and led by visionary Nicholas Negroponte, the One Laptop per Child (OLPC) initiative set out to revolutionize education in developing countries by providing children with durable, low-cost laptops. The flagship device, known as the XO laptop, was designed to be rugged, energy-efficient, and user-friendly, tailored to harsh environments and limited infrastructure.',
      'The program aimed to empower children by giving them access to digital resources, interactive learning materials, and global information networks—transforming traditional classroom settings into dynamic, technology-enhanced learning environments. OLPC received widespread global attention and significant investment, inspiring a wave of educational technology innovations and policy discussions on digital equity.',
      'Despite the initial optimism, OLPC faced numerous challenges. Issues such as inconsistent infrastructure, cultural and language barriers, and difficulties in integrating the technology effectively into existing educational systems hindered its impact. Over time, criticisms emerged regarding the sustainability of the project and whether access to technology alone could address deeper educational disparities.',
      'Nevertheless, the legacy of OLPC endures as it sparked a global dialogue on the role of technology in education, influenced subsequent initiatives in the digital learning space, and underscored the critical importance of equitable access to educational resources. The project continues to be studied as a bold experiment in how technology can empower communities, even as its outcomes highlight the complexities of educational reform in diverse socio-economic contexts.',
    ],
    duration: 10, // Approximate active phase from 2005 to 2015
    complexity: Complexity
        .moderate, // Moderately complex due to its multifaceted educational and logistical challenges
    severity: Severity
        .medium, // Medium severity reflects significant impact on education without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Raises ethical considerations regarding educational equity and digital divide issues
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Influenced global discussions on education and technology access
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c81',
    categories: [
      'EL', // Education & Learning (primary)
      'HC', // History & Culture (secondary)
      'BS'
    ],
    title: 'The Rise of Khan Academy: Revolutionizing Free Education',
    imageUrl:
        'https://static.startuptalky.com/2022/09/khan-academy-logo-startuptalky--2-.jpg',
    keywords: [
      'Khan Academy',
      'Online Learning',
      'Free Education',
      'EdTech',
      'Digital Learning Revolution',
    ],
    caseStudy: [
      'Founded in 2008 by Salman Khan, Khan Academy began as a modest effort to tutor his cousins through simple YouTube videos. Quickly recognizing the potential of digital platforms to democratize education, Khan transformed his initiative into a comprehensive, non-profit online learning platform. Today, Khan Academy offers thousands of free lessons covering subjects from mathematics and science to history and economics, serving millions of learners worldwide.',
      'Khan Academy’s innovative model disrupted traditional education by leveraging interactive video lessons, personalized learning dashboards, and practice exercises to help students learn at their own pace. This open-access approach broke down geographical and economic barriers, enabling students from all corners of the world to access quality educational content that was previously out of reach.',
      'The platform’s success has had a profound cultural impact—it not only reshaped how knowledge is delivered and consumed but also sparked a global movement towards digital education. Educational institutions, policymakers, and other EdTech companies have since drawn inspiration from Khan Academy’s model, contributing to widespread curricular reforms and new approaches to teaching and learning.',
      'Despite challenges such as ensuring sustained engagement, integrating with formal education systems, and addressing the digital divide, Khan Academy continues to innovate and expand its offerings. Its enduring legacy highlights the transformative power of technology in education and serves as a benchmark for the potential of digital platforms to foster lifelong learning and equitable access to knowledge.',
    ],
    duration: 14, // Approximately 2008 to present (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to the integration of technology and educational pedagogy, yet straightforward in concept
    severity: Severity
        .medium, // Medium severity given its significant positive impact on education without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes ethical access to education and addresses the digital divide
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profoundly impacted global education and cultural perceptions of learning
    isScientificCase: false,
    isCulturalCase:
        true, // Has become a cultural icon in the realm of education reform and digital learning innovation
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c82',
    categories: [
      'EL', // Education & Learning (primary)
      'BS',
    ],
    title: 'The Rise of Duolingo: Gamifying Language Learning',
    imageUrl:
        'https://academichelp.net/wp-content/uploads/2023/07/The-Rise-and-Rule-of-Duolingo-in-the-Language-Learning-Realm.jpg',
    keywords: [
      'Duolingo',
      'Language Learning',
      'Gamification',
      'EdTech',
      'Mobile Learning',
    ],
    caseStudy: [
      'Founded in 2011 by Luis von Ahn and Severin Hacker, Duolingo quickly emerged as one of the world’s most popular language learning platforms. By integrating gamification elements such as points, levels, and rewards into its lesson structure, Duolingo transformed traditional language education into an engaging, interactive experience accessible to anyone with an internet connection.',
      'Offering courses in over 30 languages, Duolingo employs an adaptive learning algorithm that tailors lessons to individual proficiency levels, reinforcing weaker areas and celebrating progress. Its freemium model—providing core content for free while offering premium features for a fee—has democratized language education and set new standards in the EdTech industry.',
      'The platform’s innovative approach not only makes learning fun but also effective, as evidenced by its widespread adoption among millions of users globally. Duolingo’s success has spurred a broader cultural shift toward mobile and self-paced learning, influencing how educational content is delivered and consumed in the digital age.',
      'Today, Duolingo stands as a landmark in educational innovation, continuously evolving with advances in machine learning and user experience design. Its impact on global language acquisition and digital literacy underscores the transformative potential of technology in education.',
    ],
    duration: 11, // Approximately 2011 to present (ongoing impact)
    complexity: Complexity
        .simple, // The platform’s approach is intuitive and user-friendly, making it simple in concept
    severity: Severity
        .medium, // Medium severity reflects significant educational impact without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes equitable access to language education and digital literacy
    isBusinessCase: true, // A notable business success in the EdTech sector
    isSocietalImpactCase:
        true, // Has broadly influenced how people learn languages and engage with digital education tools
    isScientificCase: false,
    isCulturalCase:
        true, // Facilitates cultural exchange and global communication
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c83',
    categories: [
      'EL', // Education & Learning (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Rise of BYJU\'s: India\'s EdTech Giant',
    imageUrl:
        'https://bsmedia.business-standard.com/_media/bs/img/article/2024-08/09/full/1723224639-5178.jpg?im=FeatureCrop,size=(826,465)', // Replace with an actual image URL if available
    keywords: [
      'BYJU\'s',
      'EdTech',
      'Digital Learning',
      'Online Education',
      'India',
    ],
    caseStudy: [
      'Founded in 2011 by Byju Raveendran, BYJU\'s began as a modest offline coaching initiative and rapidly transformed into one of the world\'s leading educational technology companies. By harnessing the power of interactive video lessons, gamified learning, and personalized instruction, BYJU\'s reimagined traditional education and made high-quality learning accessible to millions of students, particularly in India.',
      'The platform offers a comprehensive range of courses tailored for K–12 education as well as competitive exam preparation, utilizing adaptive learning algorithms that provide real-time feedback to learners. Its innovative freemium model, complemented by premium subscription services, has attracted vast numbers of users and significant venture capital, propelling the company to a valuation exceeding \$20 billion at its peak.',
      'BYJU\'s rapid expansion disrupted conventional tutoring and classroom models, setting new benchmarks in the global EdTech industry. The company’s success has driven digital education adoption in emerging markets, inspiring policy shifts and spurring the development of innovative educational tools worldwide.',
      'Despite facing challenges such as market competition and regulatory scrutiny, BYJU\'s continues to evolve through strategic acquisitions and the expansion of its course offerings. Its success story stands as a beacon of entrepreneurial innovation, demonstrating how technology can democratize access to quality education and transform societal learning paradigms.',
    ],
    duration: 12, // Approximately 2011 to present (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to the integration of technology, pedagogy, and business strategy
    severity: Severity
        .medium, // Medium severity reflects its transformative impact on education and the economy without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes equitable access to education while raising discussions on digital equity
    isBusinessCase: true, // A landmark business success in the EdTech sector
    isSocietalImpactCase:
        true, // Significantly influenced educational practices and access globally
    isScientificCase: false,
    isCulturalCase:
        true, // Shaped cultural perceptions of learning and digital education in India and beyond
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c84',
    categories: [
      'EL', // Education & Learning (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Rise of Coursera: Pioneering MOOCs',
    imageUrl:
        'https://static01.nyt.com/images/2020/05/20/business/VIRUS-MOOCS1/merlin_172473702_79fc669f-247a-4260-b67c-a1e4fac274ee-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
    keywords: [
      'Coursera',
      'MOOCs',
      'Online Learning',
      'Digital Education',
      'Certification',
    ],
    caseStudy: [
      'Founded in 2012 by Stanford professors Andrew Ng and Daphne Koller, Coursera emerged as one of the pioneering platforms for Massive Open Online Courses (MOOCs), with the mission of democratizing access to world-class education. By partnering with top universities and organizations around the globe, Coursera quickly expanded its offerings to include individual courses, professional certificates, and full degree programs.',
      'Leveraging cutting-edge technology, the platform delivers high-quality video lectures, interactive assignments, and peer-reviewed assessments, enabling learners from diverse backgrounds to study at their own pace. Its freemium model—providing free access to course materials with optional paid certifications—has redefined how educational content is distributed and monetized in the digital age.',
      'The success of Coursera has had a profound impact on global education, compelling traditional institutions to adopt online learning strategies and embrace digital transformation. It has also played a critical role in workforce development by offering targeted courses in emerging fields like data science, artificial intelligence, and digital marketing, thus equipping millions with essential modern skills.',
      'Today, Coursera stands as a landmark in digital education, symbolizing the transformative power of technology to break down barriers and promote lifelong learning. Its innovative approach continues to influence educational policies, business models, and cultural attitudes toward learning worldwide.',
    ],
    duration: 10, // Approximately 2012 to present (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to the integration of technology and pedagogical innovation
    severity: Severity
        .medium, // Medium severity reflecting its transformative impact on education without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes equitable access to education and addresses digital equity
    isBusinessCase:
        true, // Represents a significant business model and disruption in the EdTech sector
    isSocietalImpactCase:
        true, // Has significantly influenced global education practices and workforce development
    isScientificCase: false,
    isCulturalCase:
        true, // Influences cultural norms around education and lifelong learning
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c85',
    categories: [
      'EL', // Education & Learning (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Rise of Udacity: Pioneering Nanodegree Programs',
    imageUrl:
        'https://media.assettype.com/analyticsinsight%2F2024-10-03%2Fma50e9kq%2FUdacity%25E2%2580%2599s-Nanodegrees-Are-They-Worth-the-Investment.jpg?w=480&auto=format%2Ccompress&fit=max',
    keywords: [
      'Udacity',
      'Nanodegree',
      'Online Education',
      'Technical Skills',
      'EdTech',
    ],
    caseStudy: [
      'Founded in 2012 by industry pioneers including Sebastian Thrun, Udacity emerged as a transformative force in online education by pioneering Nanodegree programs focused on in-demand technical skills such as artificial intelligence, data science, programming, and robotics. Leveraging strategic partnerships with major tech companies like Google, AT&T, and IBM, Udacity designed its courses to meet the dynamic demands of the digital economy.',
      'The Nanodegree model combined rigorous, project-based learning with personalized mentorship and real-world applications, offering learners a practical, career-oriented alternative to traditional degree programs. This innovative approach not only helped bridge the technical skills gap but also set new standards for online education by emphasizing measurable outcomes and industry relevance.',
      'Udacity’s breakthrough has attracted millions of students worldwide and played a crucial role in democratizing access to high-quality technical education. Its freemium model—providing free course content with the option to earn premium, industry-recognized credentials—has spurred substantial investment in the EdTech sector and influenced the development of similar platforms globally.',
      'Today, Udacity continues to expand its course offerings and refine its educational model in collaboration with global technology leaders. Its success has had a lasting impact on how professional education is delivered, reshaping workforce development and contributing to broader societal shifts toward continuous learning and digital literacy.',
    ],
    duration: 11, // Approximately 2012 to present (ongoing impact)
    complexity: Complexity
        .moderate, // Moderately complex due to its integration of advanced technology and innovative educational methodologies
    severity: Severity
        .medium, // Medium severity reflecting transformative impact on education and workforce development without catastrophic consequences

    isLegalCase: false,
    isEthicalCase:
        true, // Promotes equitable access to quality technical education and lifelong learning
    isBusinessCase:
        true, // A landmark business innovation in the EdTech sector with significant market influence
    isSocietalImpactCase:
        true, // Has contributed to global digital literacy and reshaped workforce development
    isScientificCase: false,
    isCulturalCase:
        true, // Influences cultural attitudes towards self-improvement and technological proficiency
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c86',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Kalinga War and Its Transformative Impact on Ancient India',
    imageUrl:
        'https://theindosphere.com/wp-content/uploads/2024/09/DALL%C2%B7E-2024-09-22-00.09.39-A-wide-angle-scene-of-the-Kurukshetra-War-from-the-Mahabharata-featuring-two-massive-armies-clashing-on-a-vast-battlefield.-On-one-side-are-the-Panda.webp', // Example image URL; replace if needed
    keywords: [
      'Kalinga War',
      'Ashoka',
      'Ancient India',
      'Buddhism',
      'Transformation',
    ],
    caseStudy: [
      'Fought around 261 BCE, the Kalinga War stands as one of the most significant conflicts in ancient India. The Mauryan Empire, under Emperor Ashoka, waged a ferocious battle against the independent state of Kalinga—a war marked by extraordinary brutality and heavy casualties. The widespread devastation and immense human suffering observed during the conflict left a deep mark on Ashoka’s conscience.',
      'In the aftermath of the war, Ashoka experienced a profound transformation. Stricken by remorse over the enormous loss of life, he renounced the violent methods that had brought him to power and embraced the principles of non-violence and Buddhist philosophy. This pivotal change led him to champion peace, religious tolerance, and social welfare, efforts that were meticulously recorded in his edicts carved on pillars and rocks throughout his empire.',
      'The Kalinga War not only consolidated Mauryan control over a vast territory but also catalyzed a cultural and ethical renaissance in the region. Ashoka’s subsequent policies and his patronage of Buddhism helped spread the religion far beyond India’s borders, influencing art, literature, and governance across Asia. The enduring legacy of this conflict is reflected in how it reshaped the moral and political landscape of ancient India, setting a benchmark for enlightened leadership and ethical governance.',
    ],
    duration:
        0.001, // The war itself was relatively short, though its impacts have been long-lasting
    complexity: Complexity
        .moderate, // Moderately complex due to the interplay between military strategy, political power, and subsequent cultural transformation
    severity: Severity
        .high, // High severity given the massive loss of life and profound long-term societal and cultural impacts

    isLegalCase: false,
    isEthicalCase:
        true, // Raises ethical questions about the costs of war and the moral implications of leadership
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound societal impact through the spread of Buddhism and reformed governance
    isScientificCase: false,
    isCulturalCase:
        true, // Significant cultural ramifications evident in art, literature, and historical records
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c87',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Third Battle of Panipat',
    imageUrl:
        'https://www.sscadda.com/wp-content/uploads/multisite/sites/2/2023/08/31163244/Third-Battle-of-Panipat-01.png',
    keywords: [
      'Third Battle of Panipat',
      'Maratha Empire',
      'Ahmad Shah Durrani',
      'Military Conflict',
      '18th Century India',
    ],
    caseStudy: [
      'Fought on January 14, 1761, the Third Battle of Panipat remains one of the largest and bloodiest battles in 18th-century India. This epic confrontation saw the Maratha Empire clash with the invading forces of Ahmad Shah Durrani, also known as Ahmad Shah Abdali, whose ambition was to expand his dominion into the Indian subcontinent.',
      'The battle was characterized by intense combat, intricate military strategies, and devastating losses on both sides. Despite the Marathas’ numerical strength and fierce resolve, the battle turned catastrophic as the well-organized and battle-hardened Afghan forces gained the upper hand. Contemporary estimates suggest that hundreds of thousands perished, leaving a permanent scar on the region’s history.',
      'In its wake, the battle led to a significant power vacuum in North India, severely weakening the Maratha confederacy and paving the way for subsequent political upheavals—including the eventual rise of British colonial power. The enormous loss of life and the strategic shift it induced have rendered the Third Battle of Panipat a pivotal event in the annals of Indian history.',
      'The enduring legacy of this conflict is reflected in its profound cultural and political ramifications, serving as a stark reminder of the devastating human cost of war and the complex interplay of ambition, power, and fate in shaping historical outcomes.',
    ],
    duration:
        0.002, // A single day battle (~1 day out of 365 days, expressed in years)
    complexity: Complexity
        .hard, // Involves complex military strategies and far-reaching political consequences
    severity: Severity
        .high, // High severity due to massive casualties and long-term impact on regional power dynamics

    isLegalCase: false,
    isEthicalCase:
        false, // Raises ethical questions about the human cost of war
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound impact on the social and political fabric of the region
    isScientificCase: false,
    isCulturalCase:
        true, // Left a lasting imprint on Indian historical and cultural narratives
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c88',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Battle of Hydaspes: Alexander vs. King Porus',
    imageUrl:
        'https://salute.co.in/wp-content/uploads/2020/11/painting-1024x631.jpg', // Example image; replace with a more specific one if available
    keywords: [
      'Battle of Hydaspes',
      'Alexander the Great',
      'King Porus',
      'Ancient India',
      'Military Strategy',
    ],
    caseStudy: [
      'Fought in 326 BCE near the Hydaspes River (present-day Jhelum in Pakistan), the Battle of Hydaspes stands as one of the most celebrated and strategically complex engagements in ancient military history. In this epic clash, Alexander the Great’s Macedonian forces faced King Porus of the Paurava kingdom, whose valor and tactical acumen left a lasting impression on the conqueror.',
      'The battle was marked by the effective use of war elephants by Porus, which initially posed a significant challenge to Alexander’s phalanx formations. Despite these obstacles and the difficult terrain posed by the river, Alexander’s tactical ingenuity and disciplined troops managed to outflank the enemy. The fierce combat showcased not only the brutality of ancient warfare but also the high level of military innovation and strategic planning prevalent at the time.',
      'After a hard-fought victory, Alexander was reportedly impressed by Porus’s courage and leadership. Instead of exacting harsh retribution, he reinstated Porus as a regional ruler, allowing him to govern his territory as a loyal ally—a decision that had a lasting influence on the administration of conquered territories and set a precedent for integrating local governance with imperial rule.',
      'The Battle of Hydaspes had far-reaching cultural and political ramifications. It not only expanded Alexander’s empire but also demonstrated the potential for cultural synthesis between Greek and Indian civilizations. The encounter influenced subsequent military tactics and continues to be studied as a prime example of the complex interplay between valor, strategy, and diplomacy in ancient warfare.',
    ],
    duration:
        0.002, // The battle was fought in a single day (expressed in years)
    complexity: Complexity
        .moderate, // Moderately complex due to strategic intricacies and varied battlefield dynamics
    severity: Severity
        .high, // High severity given the scale of combat and significant historical ramifications

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Had lasting impact on regional governance and cultural exchanges
    isScientificCase: false,
    isCulturalCase:
        true, // Influenced art, literature, and historical narratives in both Western and Eastern cultures
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c89',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Battle of Plassey: A Turning Point in Colonial India',
    imageUrl:
        'https://www.adda247.com/jobs/wp-content/uploads/sites/4/2024/07/09173817/Battle-of-Plassey.png', // Example image URL; replace if needed
    keywords: [
      'Battle of Plassey',
      'British East India Company',
      'Siraj ud-Daulah',
      'Colonial Rule',
      'India',
    ],
    caseStudy: [
      'Fought on June 23, 1757, the Battle of Plassey stands as one of the most pivotal events in Indian history. In this decisive confrontation, the forces of the British East India Company, under the leadership of Robert Clive, clashed with the army of Nawab Siraj ud-Daulah of Bengal. The battle was characterized by strategic alliances and covert tactics, including betrayal by some of the Nawab’s key commanders.',
      'The outcome of the battle was a resounding victory for the British, which not only weakened the power of the Nawab but also laid the foundation for British dominance in India. The success at Plassey enabled the East India Company to gain control over vast regions of the subcontinent, fundamentally altering the political and economic landscape of India.',
      'This watershed moment led to the gradual expansion of British colonial rule, triggering far-reaching cultural, social, and administrative changes that would shape India for centuries to come. The battle’s legacy is evident in the profound transformation of governance in India, the restructuring of its economy, and the deep-rooted cultural shifts that followed the onset of colonialism.',
      'The Battle of Plassey remains a subject of extensive study, symbolizing both the power of strategic military alliances and the dramatic shifts in power that can alter the course of history. Its reverberations are still felt today in the collective memory of the region, serving as a reminder of the complex interplay between military conflict and societal transformation.',
    ],
    duration:
        0.002, // The battle was fought in a single day (~1 day expressed in years)
    complexity: Complexity
        .moderate, // Moderately complex due to the interplay of military tactics, political intrigue, and long-term consequences
    severity: Severity
        .high, // High severity due to its profound historical impact and the dramatic shift in power dynamics

    isLegalCase: false,
    isEthicalCase:
        true, // Raises ethical questions about colonial exploitation and the human cost of imperial ambition
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound societal impact, marking the beginning of centuries-long colonial rule in India
    isScientificCase: false,
    isCulturalCase:
        true, // Influenced cultural narratives, literature, and art about colonialism in India
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c90',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Battle of Haldighati: Valor and Resistance',
    imageUrl:
        'https://pragyata.com/wp-content/uploads/2020/08/Chronicles-of-Valour-The-Battle-of-Haldighati.jpg',
    keywords: [
      'Battle of Haldighati',
      'Maharana Pratap',
      'Rajput Valor',
      'Mughal Empire',
      'Medieval India',
    ],
    caseStudy: [
      'Fought on June 18, 1576, the Battle of Haldighati stands as one of the most celebrated conflicts in Indian history, symbolizing the fierce resistance of the Rajputs against the expanding Mughal Empire. In this dramatic confrontation, Maharana Pratap of Mewar led his valorous troops against the well-equipped forces of the Mughal general Raja Man Singh I, who was in the service of Emperor Akbar.',
      'The battle was waged in the rugged terrain of Haldighati, where the harsh landscape played a crucial role in shaping the tactics of both sides. Despite being outnumbered, Maharana Pratap’s forces employed guerilla warfare and leveraged their intimate knowledge of the terrain to counter the Mughal advantage. The fierce and costly battle did not result in a clear tactical victory for either side, but it came to epitomize the spirit of defiance and sacrifice that would inspire generations.',
      'Although the Mughal army eventually gained a strategic upper hand, the battle’s true legacy lies in its cultural and historical significance. It has been immortalized in Indian folklore, literature, and art as a symbol of unyielding resistance and the enduring pride of the Rajput community. The Battle of Haldighati continues to serve as a potent reminder of the human cost of war and the complex interplay of honor, strategy, and destiny in shaping historical events.',
    ],
    duration:
        0.002, // The battle was fought in a single day (~1 day expressed in years)
    complexity: Complexity
        .moderate, // Moderately complex due to intricate military tactics and historical nuances
    severity: Severity
        .high, // High severity due to its profound cultural impact and significant historical consequences

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Left a lasting impact on regional society and national identity
    isScientificCase: false,
    isCulturalCase:
        true, // Profound influence on cultural narratives and historical memory
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c91',
    categories: [
      'EL', // Education & Learning (primary)
      'HC', // History & Culture (secondary)
    ],
    title:
        'The Destruction of Nalanda University: A Lost Beacon of Ancient Learning',
    imageUrl:
        'https://indroyc.com/wp-content/uploads/2024/06/nalanda-university.jpeg?w=1200', // Example image URL; replace if needed
    keywords: [
      'Nalanda University',
      'Ancient Education',
      'Destruction',
      'Buddhist Learning',
      'Indian Heritage',
    ],
    caseStudy: [
      'Founded around the 5th century CE, Nalanda University in ancient India was a globally renowned center of learning that attracted scholars from across Asia. With its vast libraries and exceptional curriculum in subjects ranging from philosophy and medicine to mathematics and astronomy, Nalanda represented the pinnacle of ancient educational and cultural achievement.',
      'However, in the late 12th century—around 1193 AD—the university was brutally attacked and destroyed by the invading forces of Bakhtiyar Khilji. This violent onslaught led to the annihilation of countless priceless manuscripts and irreparable damage to the institution’s infrastructure, effectively ending centuries of scholarly pursuit at Nalanda.',
      'The destruction of Nalanda not only marked a tragic loss of knowledge and cultural heritage but also signaled a major turning point in the intellectual history of the Indian subcontinent. The collapse of this great center of learning contributed to the decline of Buddhist influence in the region and had profound, lasting impacts on educational traditions and cultural memory in Asia.',
      'Today, the ruins of Nalanda University stand as a somber reminder of the vulnerability of cultural and educational institutions in times of conflict, and its legacy continues to inspire efforts to preserve and revive ancient knowledge in the modern era.',
    ],
    duration:
        0.25, // The destructive event occurred over a short period (approximately 1 day, expressed in years)
    complexity: Complexity
        .moderate, // Moderately complex due to the interplay of military conquest, cultural loss, and educational decline
    severity: Severity
        .high, // High severity given the irreversible loss of intellectual heritage and profound societal impact

    isLegalCase: false,
    isEthicalCase:
        true, // Raises ethical questions about the destruction of cultural heritage and loss of knowledge
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Significant societal impact through the long-term decline in educational and cultural development
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced cultural narratives and historical consciousness in India and beyond
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c92',
    categories: [
      'HC', // History & Culture (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'The Invasions of Mahmud of Ghazni and Impact on Indian Culture',
    imageUrl:
        'https://www.cheggindia.com/wp-content/uploads/2023/12/mahmud-of-ghazni.png', // Example image URL; please replace with a preferred source if necessary
    keywords: [
      'Mahmud of Ghazni',
      'Temple Destruction',
      'Indian Culture',
      'Invasion Impact',
      'Cultural Heritage Loss',
    ],
    caseStudy: [
      'In the early 11th century, Mahmud of Ghazni, a prominent ruler from the Ghaznavid dynasty, led several military campaigns into the Indian subcontinent. Historical accounts document that during these invasions, numerous Hindu temples and centers of learning were attacked and destroyed. One of the most frequently cited examples is the destruction of the Somnath Temple in Gujarat in 1026 AD, an event that has come to symbolize the profound cultural and religious upheavals of that era.',
      'The immediate effects of these invasions included the loss of priceless architectural masterpieces, ancient manuscripts, and religious artifacts—elements that were integral to the cultural and spiritual fabric of the region. The destruction contributed to significant disruptions in local socio-political structures and economies, and it is often described as having a long-term negative impact on indigenous cultural development.',
      'However, modern scholarship also emphasizes that the historical impact of these invasions is multifaceted. While there was undeniable cultural loss and hardship, some historians argue that the subsequent periods witnessed a complex process of cultural synthesis. This blending of influences eventually contributed to the rich, diverse tapestry of later Indian culture. Nonetheless, the negative impacts—especially the immediate and irreversible loss of cultural heritage—remain a critical aspect of the historical narrative.',
      'This case study serves as an example of how military conquests can lead to profound and lasting changes in cultural and educational landscapes. It continues to be the subject of extensive academic research and debate, reflecting on the ethical and societal consequences of historical conflicts.',
    ],
    duration:
        27, // The specific events (e.g., the destruction of Somnath) occurred over a short period (roughly one day)
    complexity: Complexity
        .moderate, // Moderately complex due to diverse historical interpretations and the multifaceted nature of cultural change
    severity: Severity
        .high, // High severity given the extensive loss of cultural heritage and its enduring impact on societal development

    isLegalCase: false,
    isEthicalCase:
        true, // Raises important ethical considerations regarding the destruction of cultural heritage
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound societal impact through the disruption of cultural and religious traditions
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced cultural narratives and historical memory in the region
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c93',
    categories: [
      'FE', // Finance & Economics (primary)
    ],
    title: 'The Collapse of Barings Bank: Rogue Trader Nick Leeson',
    imageUrl: 'https://pbs.twimg.com/media/CrxJhkpWgAE1E8A.jpg',
    keywords: [
      'Barings Bank',
      'Nick Leeson',
      'Rogue Trading',
      'Financial Collapse',
      'Bank Scandal',
    ],
    caseStudy: [
      'Barings Bank, established in 1762, was once one of the most venerable financial institutions in the United Kingdom. However, in the early 1990s, the bank’s long-standing reputation was shattered by the actions of rogue trader Nick Leeson, who operated out of Barings’ Singapore office. Leeson engaged in unauthorized speculative trading on futures contracts at the Singapore International Monetary Exchange (SIMEX), hiding mounting losses in a concealed error account.',
      'Over a span of roughly three years—from 1992 until the catastrophic blow-up in 1995—Leeson’s risky trades amassed losses estimated at £827 million. As these losses spiraled out of control, the bank’s risk management systems and internal controls proved woefully inadequate, leading to the sudden collapse of Barings in February 1995. The bank was subsequently acquired by the Dutch banking group ING for a nominal sum, marking one of the most dramatic financial failures in modern banking history.',
      'The collapse not only exposed severe shortcomings in corporate governance and oversight but also triggered sweeping regulatory reforms across the global financial industry. The scandal prompted financial institutions worldwide to re-examine risk management practices and led to the implementation of stricter controls on trading activities and internal auditing processes.',
      'The Barings Bank debacle remains a landmark case study in financial risk, highlighting the dangers of unchecked speculative trading, inadequate regulatory oversight, and the potential for individual misconduct to bring down even the most storied institutions.',
    ],
    duration: 3, // Approximately 1992-1995
    complexity: Complexity
        .moderate, // Involves multifaceted issues in risk management, corporate oversight, and financial regulation
    severity: Severity
        .high, // High severity due to the catastrophic collapse of a historic bank and its long-lasting impact on global financial practices

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: false,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c94',
    categories: [
      'FE', // Finance & Economics (primary)
      'BS', // Business & Startups (secondary)
    ],
    title: 'The Parmalat Scandal: Corporate Fraud in Italy',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHTl7SGem7-IC5AocNIbHktgcFAm6fiQpfcg&s',
    keywords: [
      'Parmalat',
      'Corporate Fraud',
      'Accounting Scandal',
      'Bankruptcy',
      'Italy',
    ],
    caseStudy: [
      'In 2003, Parmalat, once a powerhouse in Europe’s dairy industry, was brought down by one of the largest corporate frauds in history. The company’s financial statements were grossly manipulated through complex schemes involving falsified accounts, hidden debts, and off-balance sheet transactions that masked a staggering €14 billion in financial irregularities.',
      'At the center of the scandal was founder Calisto Tanzi, whose fraudulent practices enabled Parmalat to present an artificially robust financial position. When the truth emerged, it led to a dramatic collapse of the company, wiping out billions of euros in investor value and shaking global financial markets.',
      'The fallout from the Parmalat scandal was immense: it triggered widespread legal actions, resulted in the conviction of top executives, and forced a complete overhaul of corporate governance standards in Italy and across Europe. Regulatory bodies tightened financial reporting requirements and auditing standards to prevent similar occurrences in the future.',
      'Today, the Parmalat scandal serves as a landmark case study in corporate fraud, illustrating the catastrophic consequences of unchecked managerial malfeasance and inadequate regulatory oversight. Its legacy continues to influence modern practices in corporate governance and financial transparency, serving as a stern reminder of the importance of ethical business practices and robust financial controls.',
    ],
    duration:
        1, // The scandal unfolded over a period leading up to and culminating in 2003
    complexity: Complexity
        .hard, // Involves intricate financial manipulations and systemic regulatory failures
    severity: Severity
        .high, // High severity due to massive financial losses and lasting impact on market regulations

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: false,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c95',
    categories: [
      'FE', // Finance & Economics (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'The 1MDB Scandal: A Global Financial Fraud',
    imageUrl:
        'https://financialcrimeacademy.org/wp-content/uploads/2022/02/68.jpg',
    keywords: [
      '1MDB',
      'Financial Fraud',
      'Corruption',
      'Malaysia',
      'Global Scandal',
    ],
    caseStudy: [
      'Established in 2009 as a sovereign wealth fund to boost economic development, 1MDB (1Malaysia Development Berhad) quickly spiraled into one of the most infamous financial frauds in modern history. Allegations emerged that billions of dollars were misappropriated through a labyrinth of complex financial transactions involving key political figures, including former Prime Minister Najib Razak, and a network of international financiers.',
      'Over the course of approximately seven years, funds were diverted from the intended development projects into private accounts and shell companies across multiple jurisdictions. This vast embezzlement not only destabilized the Malaysian economy but also sparked a series of high-profile investigations and legal actions in several countries.',
      'The fallout from the scandal led to a major crisis of confidence in corporate governance and financial regulation, prompting sweeping reforms aimed at tightening oversight of sovereign wealth funds and international financial transactions. The 1MDB scandal profoundly affected Malaysia’s political landscape, igniting public outrage, calls for accountability, and a reexamination of the relationships between state institutions and private financial entities.',
      'Today, the 1MDB case serves as a benchmark for the global risks associated with unchecked corruption and inadequate regulatory frameworks. It continues to influence financial policies and legal practices worldwide, while also shaping cultural perceptions of transparency and accountability in the modern financial system.',
    ],
    duration: 7, // Approximately 2009-2016
    complexity: Complexity
        .moderate, // Involves intricate cross-border financial schemes and regulatory failures
    severity: Severity
        .high, // High severity due to massive financial losses and far-reaching political and economic impacts

    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: false,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c96',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'Kristallnacht: The Night of Broken Glass',
    imageUrl:
        'https://ichef.bbci.co.uk/news/480/cpsprodpb/1543B/production/_127599078_img46010.jpg.webp',
    keywords: [
      'Kristallnacht',
      'Night of Broken Glass',
      'Nazi Pogrom',
      'Anti-Semitism',
      'Nazi Germany',
    ],
    caseStudy: [
      'On November 9-10, 1938, the Nazi regime orchestrated a violent pogrom against Jewish communities in Germany and Austria, an event now known as Kristallnacht or the Night of Broken Glass. During this state-sponsored attack, synagogues were torched, Jewish-owned stores and homes were vandalized, and windows were shattered, leaving the streets glittering with broken glass.',
      'Approximately 30,000 Jewish men were arrested and sent to concentration camps, and dozens of Jews lost their lives in the ensuing violence. Kristallnacht marked a dramatic escalation from economic and social persecution to overt physical violence and destruction against an entire community.',
      'The brutality of the event sent shockwaves both within the Nazi-controlled territories and around the world, serving as a grim prelude to the systematic genocide of the Holocaust. The widespread cultural and religious devastation, coupled with the mass arrests, fundamentally altered the social fabric of Jewish life in Europe.',
      'International condemnation followed, but the repercussions for the Jewish community were profound—leading many to flee the increasingly hostile environment while leaving behind a legacy of trauma and cultural loss. Today, Kristallnacht stands as a powerful reminder of the catastrophic consequences of state-sponsored hate and the importance of safeguarding human rights and cultural heritage.',
    ],
    duration: 0.002, // Approximately 2 days (expressed in years)
    complexity: Complexity
        .moderate, // Involves multifaceted issues of state policy, social violence, and international response
    severity: Severity
        .critical, // Critical severity due to its profound human cost and lasting cultural impact

    isLegalCase: false,
    isEthicalCase:
        true, // Raises significant ethical issues regarding hate crimes and state-sponsored discrimination
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound impact on Jewish society and global human rights discourse
    isScientificCase: false,
    isCulturalCase:
        true, // Deep cultural and historical significance in shaping the memory of persecution
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c97',
    categories: [
      'HC', // History & Culture (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'The Holocaust: Systematic Genocide in Nazi Germany',
    imageUrl:
        'https://www.icrc.org/sites/default/files/styles/desktop_full/public/document/image/genocide-home-150428.jpg.webp?itok=HRZQr9y_', // Example image URL; replace with a preferred source if necessary
    keywords: [
      'Holocaust',
      'Genocide',
      'Nazi Germany',
      'World War II',
      'Shoah',
    ],
    caseStudy: [
      'The Holocaust was the systematic, state-sponsored genocide orchestrated by Nazi Germany, in which six million Jews, along with millions of other victims including Romani people, disabled individuals, political dissidents, and others, were exterminated during World War II. The roots of this atrocity began in the early 1930s when the Nazi regime, under Adolf Hitler, implemented draconian racial policies aimed at purifying the German state and expanding its territory.',
      'Between 1933 and 1945, a combination of discriminatory laws, propaganda, and brutal repression paved the way for mass persecution. Ghettos were established to segregate Jewish communities, and concentration camps were built across occupied territories to imprison, exploit, and ultimately exterminate millions of innocent people. The “Final Solution”—the Nazis’ plan to annihilate the Jewish population—was meticulously implemented through deportations, mass shootings, gas chambers, and forced labor. The scale and industrial nature of the genocide marked a dark chapter in human history.',
      'The Holocaust not only resulted in an unimaginable loss of life but also had profound and lasting impacts on global society. In its aftermath, the world witnessed the Nuremberg Trials, which set a precedent for international law and accountability for crimes against humanity. The memory of the Holocaust has since become a cornerstone of modern human rights discourse, influencing education, remembrance practices, and policies aimed at preventing future genocides.',
      'Today, the Holocaust serves as a solemn reminder of the dangers of unchecked hatred, prejudice, and totalitarianism. Its legacy continues to shape discussions about ethics, justice, and the responsibilities of nations to protect vulnerable populations, ensuring that the lessons of this tragedy are never forgotten.',
    ],
    duration: 12, // Approximately 1933-1945
    complexity: Complexity
        .hard, // Involves multifaceted military, political, social, and cultural dimensions
    severity: Severity
        .critical, // Critical severity due to the catastrophic loss of life and long-lasting global impact

    isLegalCase:
        true, // Followed by significant legal proceedings (e.g., Nuremberg Trials)
    isEthicalCase:
        true, // Raises profound ethical questions regarding human rights and state-sponsored genocide
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound and lasting impact on societies worldwide
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced cultural narratives and collective memory
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c98',
    categories: [
      'HC', // History & Culture (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'World War I: The Great War and Its Lasting Impact',
    imageUrl:
        'https://assets.editorial.aetnd.com/uploads/2009/10/world-war-one-gettyimages-90007631.jpg', // Example image; replace if needed
    keywords: [
      'World War I',
      'The Great War',
      'Trench Warfare',
      'Global Conflict',
      '1914-1918',
    ],
    caseStudy: [
      'World War I, known as the Great War, raged from 1914 to 1918 and involved a complex web of alliances among major world powers. Sparked by the assassination of Archduke Franz Ferdinand of Austria, the conflict quickly escalated as countries mobilized in support of their allies. The war was fought primarily on European soil, where the brutal reality of trench warfare led to prolonged stalemates and staggering casualties.',
      'Technological innovations, including machine guns, tanks, and chemical weapons, transformed the nature of combat, making the war one of the most devastating conflicts in human history. The enormous loss of life, combined with the economic burden and societal upheaval, had far-reaching consequences that reshaped the political landscape of the 20th century.',
      'The aftermath of World War I saw the collapse of empires—the Austro-Hungarian, Ottoman, Russian, and German—and led to significant redrawing of national boundaries, laying the groundwork for future geopolitical tensions. The harsh conditions imposed on Germany by the Treaty of Versailles fueled political instability and contributed to the rise of extremist ideologies, setting the stage for World War II.',
      'Culturally, the war had a profound impact on literature, art, and public consciousness, as societies grappled with the trauma of unprecedented carnage and loss. Memorials, poetry, and novels emerged to capture the sorrow and heroism of the era, ensuring that the legacy of the Great War remains deeply embedded in collective memory.',
    ],
    duration: 4, // 1914 to 1918 (4 years)
    complexity: Complexity
        .hard, // Involves multifaceted military, political, and cultural dimensions making it hard to fully comprehend
    severity: Severity
        .critical, // Critical severity due to its catastrophic human, political, and economic consequences

    isLegalCase:
        true, // Led to extensive legal and diplomatic negotiations (e.g., Treaty of Versailles)
    isEthicalCase:
        true, // Raises enduring ethical questions about warfare, human suffering, and international responsibility
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound societal impact across multiple nations and generations
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced cultural narratives, art, and literature globally
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c99',
    categories: [
      'HC', // History & Culture (primary)
      'PG', // Politics & Governance (secondary)
    ],
    title: 'World War II: A Global Conflict that Reshaped the World',
    imageUrl:
        'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/65383538a52559001dd05538.jpg', // Example image; replace with a preferred source if necessary
    keywords: [
      'World War II',
      'Global Conflict',
      'Holocaust',
      'Military Strategy',
      'Geopolitical Change',
    ],
    caseStudy: [
      'World War II, which lasted from 1939 to 1945, was a global conflict that involved most of the world’s nations and resulted in unprecedented devastation and loss of life. Sparked by the aggressive expansionism of Nazi Germany under Adolf Hitler and the imperial ambitions of Japan, the war quickly escalated into a multi-front struggle between the Allies and the Axis powers.',
      'The war saw a multitude of significant events and turning points, including the Battle of Britain, the invasion of the Soviet Union, the attack on Pearl Harbor, and the D-Day invasion. Technological advancements and new military strategies, such as blitzkrieg tactics and amphibious assaults, fundamentally changed the nature of warfare. The Holocaust, a systematic, state-sponsored genocide perpetrated by Nazi Germany, resulted in the murder of six million Jews along with millions of other victims, leaving an indelible scar on human history.',
      'The conflict culminated in the unconditional surrender of Germany in May 1945 and Japan in September 1945, reshaping national boundaries and leading to the emergence of the United States and the Soviet Union as superpowers. The aftermath of World War II brought about major geopolitical realignments, the founding of the United Nations, and a global commitment to prevent future conflicts through legal and diplomatic frameworks, as evidenced by the Nuremberg Trials.',
      'The cultural, political, and economic impacts of World War II continue to influence the modern world. The war spurred significant technological and scientific advancements, reshaped societal structures, and left a lasting legacy in literature, art, and collective memory. It remains a defining moment in human history, symbolizing both the depths of human cruelty and the resilience required to rebuild in its aftermath.',
    ],
    duration: 6, // 1939 to 1945 (6 years)
    complexity: Complexity
        .hard, // Involves multifaceted military, political, social, and cultural dimensions
    severity: Severity
        .critical, // Critical severity due to catastrophic human loss, geopolitical shifts, and enduring global impact

    isLegalCase:
        true, // Led to extensive legal proceedings (e.g., Nuremberg Trials)
    isEthicalCase:
        true, // Raises profound ethical issues regarding human rights and the conduct of war
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Profound and lasting impact on societies worldwide
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced art, literature, and collective cultural memory
    isCrisisCase: true,
  ),
  const CaseStudy(
    id: 'c100',
    categories: [
      'HC', // History & Culture (primary)
      //'PG', // Politics & Governance (secondary)
    ],
    title: 'The Disappearance of Malaysia Airlines Flight MH370',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/0/05/Boeing_777-200ER_Malaysia_AL_%28MAS%29_9M-MRO_-_color.jpg',
    keywords: [
      'MH370',
      'Malaysia Airlines',
      'Aviation Mystery',
      'Disappearance',
      'International Search',
    ],
    caseStudy: [
      'On March 8, 2014, Malaysia Airlines Flight MH370 mysteriously vanished from radar while en route from Kuala Lumpur to Beijing, sparking one of the greatest aviation mysteries in modern history. The aircraft, carrying 239 passengers and crew, disappeared under puzzling circumstances, leaving families and authorities worldwide grappling with uncertainty and grief.',
      'Despite an extensive multinational search covering vast areas of the Indian Ocean, the wreckage of MH370 has never been conclusively located, and the exact cause of its disappearance remains unresolved. The ongoing investigation has spawned numerous theories—ranging from mechanical failure and human error to more speculative scenarios involving hijacking or deliberate sabotage—yet no definitive explanation has emerged.',
      'The disappearance of MH370 has profoundly impacted the aviation industry, prompting a re-evaluation of global flight tracking systems and search and rescue protocols. It has also led to changes in international regulatory standards to improve communication and oversight in air travel, with the aim of preventing similar tragedies in the future.',
      'Culturally, the mystery of MH370 continues to capture the public imagination, inspiring documentaries, books, and widespread media coverage. It has become a symbol of the limitations of modern technology and the enduring enigmas that can still challenge even the most advanced systems in our globalized world.',
      'The case stands as a poignant reminder of the unpredictable nature of modern transportation and the far-reaching human and regulatory impacts when a tragedy remains unsolved. Its legacy persists in ongoing efforts to enhance aviation safety and in the collective memory of those affected by the incident.',
    ],
    duration:
        0.002, // The disappearance was instantaneous (approximately 1 day expressed in years)
    complexity: Complexity
        .hard, // Involves multifaceted technological, investigative, and geopolitical dimensions
    severity: Severity
        .high, // High severity due to profound emotional, societal, and regulatory impacts from the unresolved mystery

    isLegalCase: false,
    isEthicalCase: false,
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Significant impact on public trust and aviation regulation
    isScientificCase:
        true, // Extensive scientific investigation and technological challenges involved
    isCulturalCase:
        false, // Deep cultural impact with an enduring presence in public discourse
    isCrisisCase: false,
  ),
  const CaseStudy(
    id: 'c101',
    categories: [
      'PG', // Politics & Governance (primary)
      'HC', // History & Culture (secondary)
    ],
    title: 'The Suez Crisis: A Pivotal Moment in Decolonization',
    imageUrl:
        'https://www.nam.ac.uk/sites/default/files/styles/slice_lg/public/2017-10/121726_slice.jpg.webp?itok=HBSVFYDd', // Example image URL; replace if needed
    keywords: [
      'Suez Crisis',
      'Nasser',
      'Nationalization',
      'Decolonization',
      'Cold War',
    ],
    caseStudy: [
      'In 1956, the Suez Crisis emerged as a turning point in global politics and decolonization when Egyptian President Gamal Abdel Nasser nationalized the Suez Canal, a vital waterway previously controlled by British and French interests. This bold move was seen as an assertion of Egyptian sovereignty and a challenge to the old colonial order, and it quickly set off a series of dramatic events.',
      'In response to the nationalization, Israel, followed by Britain and France, launched a military intervention aimed at regaining control of the canal and toppling Nasser. The ensuing conflict lasted for about a month, leading to intense military engagements and significant casualties on all sides. International pressure, particularly from the United States and the Soviet Union, forced the invading forces to withdraw, marking a decisive defeat for the old European colonial powers.',
      'The crisis had far-reaching consequences: it accelerated the process of decolonization in Africa and Asia, reshaped the balance of power during the Cold War, and redefined international norms regarding state sovereignty and economic nationalism. The Suez Crisis remains a seminal event in modern history, symbolizing both the decline of European imperial influence and the rise of new geopolitical dynamics in a post-colonial world.',
      'Today, the legacy of the Suez Crisis continues to influence discussions on international law, global trade, and the political transformation of regions emerging from colonial rule, making it a key subject of study in both political science and cultural history.',
    ],
    duration: 0.1, // Approximately 1 month (expressed in years)
    complexity: Complexity
        .moderate, // Moderately complex due to the intricate interplay of military, political, and cultural factors
    severity: Severity
        .high, // High severity due to its profound impact on decolonization and global power dynamics

    isLegalCase: false,
    isEthicalCase:
        true, // Raises ethical questions about imperialism, national sovereignty, and the consequences of military intervention
    isBusinessCase: false,
    isSocietalImpactCase:
        true, // Significant impact on global society by reshaping colonial structures and international relations
    isScientificCase: false,
    isCulturalCase:
        true, // Deeply influenced cultural narratives and historical memory regarding the end of empire
    isCrisisCase: true,
  ),
];
