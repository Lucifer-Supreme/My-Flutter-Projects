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
imageUrl: 'https://www.aljazeera.com/wp-content/uploads/2017/09/ac192fb96d0c40cc981b5d99801a7e83_18.jpeg?resize=1200%2C675',
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
imageUrl: 'https://media.licdn.com/dms/image/v2/C4E12AQHsbVD3VPBgrg/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1592999340797?e=2147483647&v=beta&t=-uvyQhVRdGNaVwWR5gK10appqNJEZRskZLCmjW5oswM',
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
duration: 2 ,// years (2018–2020) (though fraud was ongoing for over a decade),
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
imageUrl: 'https://www.livelaw.in/h-upload/2021/07/19/1500x900_396972-pegasus-spyware.jpg',
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
duration: 3,// years (2018 - 2021),
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
    categories: [
      'TI',
      'ES',
      'BS',
      'HC'
    ],
    title: 'The Challenger Space Shuttle Disaster',
    imageUrl: 'https://cdn.britannica.com/30/148830-050-D216F45C/Crew-Challenger-mission-Christa-McAuliffe-Gregory-Jarvis-November-1985.jpg',
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
    categories: [
      'LE',
      'BS',
      'FE'
    ],
    title: 'The Stanford Financial Group Ponzi Scheme',
    imageUrl: 'https://fortune.com/img-assets/wp-content/uploads/2023/02/GettyImages-140799302-e1677523212339.jpg',
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
    imageUrl: 'https://www.beasleyallen.com/wp-content/uploads/epipen-price-gouging.jpg',
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
    imageUrl: 'https://dubeat.com/wp-content/uploads/2018/09/Sample-Essay-on-Causes-and-effects-of-global-financial-crisis-2008-770x350.jpg',
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
    imageUrl: 'https://i0.wp.com/text-message.blogs.archives.gov/wp-content/uploads/sites/5/2021/08/C38108-15.jpg?resize=685%2C458',
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
    imageUrl: 'https://i0.wp.com/revealnews.org/wp-content/uploads/2018/02/bernie-madoff-final.jpg?fit=1000%2C562&ssl=1',
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
    imageUrl: 'https://media.licdn.com/dms/image/v2/D4D12AQGgBq1VcyLTbg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1725877311761?e=2147483647&v=beta&t=6XgZflQF0YGBynL9q0kXctGUxGFpUhz8g6MeVQeL_AY',
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
    imageUrl: 'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/99C1/production/_90816393_gettyimages-495298217.jpg.webp',
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
    imageUrl: 'https://www.mcgill.ca/oss/files/oss/styles/hd/public/tuskegee_study.jpg?itok=QaQOKZlx&timestamp=1548275432',
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
    categories: [
      'PG',
      'FE',
      'BS'
    ],
    title: 'The LIBOR Scandal',
    imageUrl: 'https://sevenpillarsinstitute.org/wp-content/uploads/2017/11/bank-of-england-libor-scandal.jpg',
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
    categories: [
      'LE',
      'BS',
      'HC',
      'ES'
    ],
    title: 'The McLibel Case',
    imageUrl: 'https://res.cloudinary.com/dyw8mv3b0/image/upload/q_85,w_1200,h_1200,c_limit/v1/news/2023_10/G4JKPG_ppkvmq.jpg',
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


];
