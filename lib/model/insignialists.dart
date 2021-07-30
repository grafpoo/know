import 'package:know/model/insignia.dart';

class InsigniaLists {


  static final InsigniaLists _instance = InsigniaLists._();

  InsigniaLists._() {
    extraInsigniaList = []
      ..add(extraUsnInsigniaList)
      ..add(extraUscgInsigniaList);

    currentInsigniaList = []
      ..add(usaInsigniaList)
      ..add(usnInsigniaList)
      ..add(usafInsigniaList)
      ..add(usmcInsigniaList)
      ..add(uscgInsigniaList);

    duplicateCheckList = new List.from(currentInsigniaList)..addAll(extraInsigniaList);

  }

  factory InsigniaLists() {
    return _instance;
  }

  List<Insignia> usafInsigniaList = []
    ..add(Insignia("USAF", "E", "1", "Airman Basic", "no_insignia.png"))
    ..add(Insignia("USAF", "E", "2", "Airman", "E2_USAF_AM.svg.png"))
    ..add(Insignia("USAF", "E", "3", "Airman First Class", "E3_USAF_AM1.svg.png"))
    ..add(Insignia("USAF", "E", "4", "Senior Airman", "E4_USAF_SAM.svg.png"))
    ..add(Insignia("USAF", "E", "5", "Staff Sergeant", "E5_USAF_SSGT.svg.png"))
    ..add(Insignia("USAF", "E", "6", "Technical Sergeant", "E6_USAF_TSGT.svg.png"))
    ..add(Insignia("USAF", "E", "7", "Master Sergeant", "E7a_USAF_MSGT.svg.png"))
    ..add(Insignia("USAF", "E", "8", "Senior Master Sergeant", "E8a_USAF_SMSGT.svg.png"))
    ..add(Insignia("USAF", "E", "9", "Chief Master Sergeant", "E9a_USAF_CMSGT.svg.png"))
    ..add(Insignia("USAF", "E", "9", "Command Chief Master Sergeant", "E9c_USAF_CCMS.svg.png"))
    ..add(Insignia("USAF", "E", "9", "Chief Master Sergeant of the Air Force", "E9d_USAF_CMSAF.svg.png"))
    ..add(Insignia("USAF", "O", "1", "Second Lieutenant", "USAF-O1.png"))
    ..add(Insignia("USAF", "O", "2", "First Lieutenant", "USAF-O2.png"))
    ..add(Insignia("USAF", "O", "3", "Captain", "USAF-O3.png"))
    ..add(Insignia("USAF", "O", "4", "Major", "USAF-O4.png"))
    ..add(Insignia("USAF", "O", "5", "Lieutenant Colonel", "USAF-O5.png"))
    ..add(Insignia("USAF", "O", "6", "Colonel", "USAF-O6.png"))
    ..add(Insignia("USAF", "O", "7", "Brigadier General", "USAF-O7.png"))
    ..add(Insignia("USAF", "O", "8", "Major General", "USAF-O8.png"))
    ..add(Insignia("USAF", "O", "9", "Lieutenant General", "USAF-O9.png"))
    ..add(Insignia("USAF", "O", "10", "General", "USAF-O10.png"))
    ..add(Insignia("USAF", "O", "11", "General of the Air Force", "USAF-O11.png"));

  List services = [ "All", "Army", "Navy", "Air Force", "Marines", "Coast Guard" ];

  List<Insignia> usaInsigniaList = []
    ..add(Insignia("USA", "E", "1", "Private", "no_insignia.png"))
    ..add(Insignia("USA", "E", "2", "Private", "USA-OR-02.svg.png"))
    ..add(Insignia("USA", "E", "3", "Private First Class", "USA-OR-03.svg.png"))
    ..add(Insignia("USA", "E", "4", "Specialist", "USA-OR-04b-S.svg.png"))
    ..add(Insignia("USA", "E", "4", "Corporal", "USA-OR-04a-C.svg.png"))
    ..add(Insignia("USA", "E", "5", "Sergeant", "USA-OR-05.svg.png"))
    ..add(Insignia("USA", "E", "6", "Staff Sergeant", "USA-OR-06.svg.png"))
    ..add(Insignia("USA", "E", "7", "Sergeant First Class", "USA-OR-07.svg.png"))
    ..add(Insignia("USA", "E", "8", "First Sergeant", "USA-OR-08a-FS.svg.png"))
    ..add(Insignia("USA", "E", "8", "Master Sergeant", "USA-OR-08b-MS.svg.png"))
    ..add(Insignia("USA", "E", "9", "Sergeant Major", "USA-OR-09c-SM.svg.png"))
    ..add(Insignia("USA", "E", "9", "Command Sergeant Major", "USA-OR-09b-CSM.svg.png"))
    ..add(Insignia("USA", "E", "9", "Sergeant Major of the Army", "USA-OR-09a-SMoA.svg.png"))
    ..add(Insignia("USA", "W", "1", "Warrant Officer 1", "US-Army-WO1.svg.png"))
    ..add(Insignia("USA", "W", "2", "Chief Warrant Officer 2", "US-Army-CW2.svg.png"))
    ..add(Insignia("USA", "W", "3", "Chief Warrant Officer 3", "US-Army-CW3.svg.png"))
    ..add(Insignia("USA", "W", "4", "Chief Warrant Officer 4", "US-Army-CW4.svg.png"))
    ..add(Insignia("USA", "W", "5", "Chief Warrant Officer 5", "US-Army-CW5.svg.png"))
    ..add(Insignia("USA", "O", "1", "Second Lieutenant", "USAF-O1.png"))
    ..add(Insignia("USA", "O", "2", "First Lieutenant", "USAF-O2.png"))
    ..add(Insignia("USA", "O", "3", "Captain", "USAF-O3.png"))
    ..add(Insignia("USA", "O", "4", "Major", "USAF-O4.png"))
    ..add(Insignia("USA", "O", "5", "Lieutenant Colonel", "USAF-O5.png"))
    ..add(Insignia("USA", "O", "6", "Colonel", "USAF-O6.png"))
    ..add(Insignia("USA", "O", "7", "Brigadier General", "USAF-O7.png"))
    ..add(Insignia("USA", "O", "8", "Major General", "USAF-O8.png"))
    ..add(Insignia("USA", "O", "9", "Lieutenant General", "USAF-O9.png"))
    ..add(Insignia("USA", "O", "10", "General", "USAF-O10.png"))
    ..add(Insignia("USA", "O", "11", "General of the Army", "USAF-O11.png"));

  List<Insignia> usmcInsigniaList = []
    ..add(Insignia("USMC", "E", "1", "Private", "no_insignia.png"))
    ..add(Insignia("USMC", "E", "2", "Private First Class", "USMC-E2.svg.png"))
    ..add(Insignia("USMC", "E", "3", "Lance Corporal", "USMC-E3.svg.png"))
    ..add(Insignia("USMC", "E", "4", "Corporal", "USMC-E4.svg.png"))
    ..add(Insignia("USMC", "E", "5", "Sergeant", "USMC-E5.svg.png"))
    ..add(Insignia("USMC", "E", "6", "Staff Sergeant", "USMC-E6.svg.png"))
    ..add(Insignia("USMC", "E", "7", "Gunnery Sergeant", "USMC-E7.svg.png"))
    ..add(Insignia("USMC", "E", "8", "First Sergeant", "USMC-E8-1SG.svg.png"))
    ..add(Insignia("USMC", "E", "8", "Master Sergeant", "USMC-E8-MSG.svg.png"))
    ..add(Insignia("USMC", "E", "9", "Master Gunnery Sergeant", "USMC-E9-MGyS.svg.png"))
    ..add(Insignia("USMC", "E", "9", "Sergeant Major", "USMC-E9-SGM.svg.png"))
    ..add(Insignia("USMC", "E", "9", "Sergeant Major of the Marine Corps", "USMC-E9-SGMMC.svg.png"))
    ..add(Insignia("USMC", "W", "1", "Warrant Officer 1", "USMC_WO1.svg.png"))
    ..add(Insignia("USMC", "W", "2", "Chief Warrant Officer 2", "USMC_CWO2.svg.png"))
    ..add(Insignia("USMC", "W", "3", "Chief Warrant Officer 3", "USMC_CWO3.svg.png"))
    ..add(Insignia("USMC", "W", "4", "Chief Warrant Officer 4", "USMC_CWO4.svg.png"))
    ..add(Insignia("USMC", "W", "5", "Chief Warrant Officer 5", "USMC_CWO5.svg.png"))
    ..add(Insignia("USMC", "O", "1", "Second Lieutenant", "USAF-O1.png"))
    ..add(Insignia("USMC", "O", "2", "First Lieutenant", "USAF-O2.png"))
    ..add(Insignia("USMC", "O", "3", "Captain", "USAF-O3.png"))
    ..add(Insignia("USMC", "O", "4", "Major", "USAF-O4.png"))
    ..add(Insignia("USMC", "O", "5", "Lieutenant Colonel", "USAF-O5.png"))
    ..add(Insignia("USMC", "O", "6", "Colonel", "USAF-O6.png"))
    ..add(Insignia("USMC", "O", "7", "Brigadier General", "USAF-O7.png"))
    ..add(Insignia("USMC", "O", "8", "Major General", "USAF-O8.png"))
    ..add(Insignia("USMC", "O", "9", "Lieutenant General", "USAF-O9.png"))
    ..add(Insignia("USMC", "O", "10", "General", "USAF-O10.png"));

  List<Insignia> usnInsigniaList = []
    ..add(Insignia("USN", "E", "1", "Seaman Recruit", "no_insignia.png"))
    ..add(Insignia("USN", "E", "2", "Seaman Apprentice", "USN_E2_SA_collar.png"))
    ..add(Insignia("USN", "E", "2", "Seaman Apprentice", "USN_E2_SA.png"))
    ..add(Insignia("USN", "E", "2", "Fireman Apprentice", "USCG_E2_FA.png"))
    ..add(Insignia("USN", "E", "2", "Airman Apprentice", "USCG_E2_AA.png"))
    ..add(Insignia("USN", "E", "2", "Constructionman Apprentice", "USCG_E2_CA.png"))
    ..add(Insignia("USN", "E", "3", "Seaman", "USN_E3_SM_collar.png"))
    ..add(Insignia("USN", "E", "3", "Seaman", "USN_E3_SM.png"))
    ..add(Insignia("USN", "E", "3", "Airman", "USN_E3_AM.png"))
    ..add(Insignia("USN", "E", "3", "Fireman", "USN_E3_FM.png"))
    ..add(Insignia("USN", "E", "3", "Constructionman", "USN_E3_CM.png"))
    ..add(Insignia("USN", "E", "4", "Petty Officer Third Class", "USN_E4_PO3.png"))
    ..add(Insignia("USN", "E", "5", "Petty Officer Second Class", "USN_E5_PO2.png"))
    ..add(Insignia("USN", "E", "6", "Petty Officer First Class", "USN_E6_PO1.png"))
    ..add(Insignia("USN", "E", "7", "Chief Petty Officer", "USN_E7_CPO.png"))
    ..add(Insignia("USN", "E", "8", "Senior Chief Petty Officer", "USN_E8_SCPO.png"))
    ..add(Insignia("USN", "E", "8", "Command Senior Chief Petty Officer", "USN_E8_CMDCS.png"))
    ..add(Insignia("USN", "E", "9", "Master Chief Petty Officer", "USN_E9_MCPO.png"))
    ..add(Insignia("USN", "E", "9", "Command Master Chief Petty Officer", "USN_E9_CMCPO.png"))
    ..add(Insignia("USN", "E", "9", "Fleet Master Chief Petty Officer", "USN_E9_FMCPO.png"))
    ..add(Insignia("USN", "E", "9", "Master Chief Petty Officer of the Navy", "USN_E9_MCPON.png"))
    ..add(Insignia("USN", "W", "1", "Warrant Officer One", "US_Navy_WO1_insignia.svg.png"))
    ..add(Insignia("USN", "W", "2", "Chief Warrant Officer Two", "US_Navy_CW2_insignia.svg.png"))
    ..add(Insignia("USN", "W", "3", "Chief Warrant Officer Three", "US_Navy_CW3_insignia.svg.png"))
    ..add(Insignia("USN", "W", "4", "Chief Warrant Officer Four", "US_Navy_CW4_insignia.svg.png"))
    ..add(Insignia("USN", "W", "5", "Chief Warrant Officer Five", "US_Navy_CW5_insignia.svg.png"))
    ..add(Insignia("USN", "Student", "", "Midshipman/Officer Candidate", "US_Navy_OC_shoulderboard.svg.png"))
    ..add(Insignia("USN", "O", "1", "Ensign", "US_Navy_O1_insignia.svg.png"))
    ..add(Insignia("USN", "O", "2", "Lieutenant (Junior Grade)", "US_Navy_O2_insignia.svg.png"))
    ..add(Insignia("USN", "O", "3", "Lieutenant", "US_Navy_O3_insignia.svg.png"))
    ..add(Insignia("USN", "O", "4", "Lieutenant Commander", "US_Navy_O4_insignia.svg.png"))
    ..add(Insignia("USN", "O", "5", "Commander", "US_Navy_O5_insignia.svg.png"))
    ..add(Insignia("USN", "O", "6", "Captain", "US_Navy_O6_insignia.svg.png"))
    ..add(Insignia("USN", "O", "7", "Rear Admiral (lower half)", "US_Navy_O7_insignia.svg.png"))
    ..add(Insignia("USN", "O", "8", "Rear Admiral", "US_Navy_O8_insignia.svg.png"))
    ..add(Insignia("USN", "O", "9", "Vice Admiral", "US_Navy_O9_insignia.svg.png"))
    ..add(Insignia("USN", "O", "10", "Admiral", "US_Navy_O10_insignia.svg.png"))
    ..add(Insignia("USN", "O", "11", "Fleet Admiral", "US_Navy_O11_insignia.svg.png"))
    ..add(Insignia("USN", "SG", "", "Admiral of the Navy", "US_Navy_Admiral_of_Navy_insignia.svg.png"));

  List<Insignia> uscgInsigniaList = []
    ..add(Insignia("USCG", "E", "1", "Seaman Recruit", "no_insignia.png"))
    ..add(Insignia("USCG", "E", "2", "Seaman Apprentice", "USN_E2_SA_collar.png"))
    ..add(Insignia("USCG", "E", "2", "Seaman Apprentice", "USN_E2_SA.png"))
    ..add(Insignia("USCG", "E", "2", "Fireman Apprentice", "USCG_E2_FA.png"))
    ..add(Insignia("USCG", "E", "2", "Airman Apprentice", "USCG_E2_AA.png"))
    ..add(Insignia("USCG", "E", "2", "Constructionman Apprentice", "USCG_E2_CA.png"))
    ..add(Insignia("USCG", "E", "3", "Seaman", "USN_E3_SM_collar.png"))
    ..add(Insignia("USCG", "E", "3", "Seaman", "USN_E3_SM.png"))
    ..add(Insignia("USCG", "E", "3", "Airman", "USN_E3_AM.png"))
    ..add(Insignia("USCG", "E", "3", "Fireman", "USN_E3_FM.png"))
    ..add(Insignia("USCG", "E", "3", "Constructionman", "USN_E3_CM.png"))
    ..add(Insignia("USCG", "E", "4", "Petty Officer Third Class", "USCG_PO3.png"))
    ..add(Insignia("USCG", "E", "4", "Petty Officer Third Class", "USCG_PO3.svg.png"))
    ..add(Insignia("USCG", "E", "5", "Petty Officer Second Class", "USCG_PO2.png"))
    ..add(Insignia("USCG", "E", "5", "Petty Officer Second Class", "USCG_PO2.svg.png"))
    ..add(Insignia("USCG", "E", "6", "Petty Officer First Class", "USCG_PO1.png"))
    ..add(Insignia("USCG", "E", "6", "Petty Officer First Class", "USCG_PO1.svg.png"))
    ..add(Insignia("USCG", "E", "7", "Chief Petty Officer", "USCG_CPO.png"))
    ..add(Insignia("USCG", "E", "7", "Chief Petty Officer", "USCG_CPO.svg.png"))
    ..add(Insignia("USCG", "E", "8", "Senior Chief Petty Officer", "USCG_SCPO.png"))
    ..add(Insignia("USCG", "E", "8", "Senior Chief Petty Officer", "USCG_SCPO.svg.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer", "USCG_MCPO.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer", "USCG_MCPO.svg.png"))
    ..add(Insignia("USCG", "E", "9", "Command Master Chief Petty Officer", "USCG_MCPO.png"))
    ..add(Insignia("USCG", "E", "9", "Command Master Chief Petty Officer", "USCG_CMC.svg.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer of the Coast Guard Reserve Force or Area/DCO/DCMS Command Master Chief Petty Officer", "USCG_MCPO.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer of the Coast Guard Reserve Force or Area/DCO/DCMS Command Master Chief Petty Officer", "USCG_MCPOCGX.svg.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer of the Coast Guard", "USCG_MCPOCG.png"))
    ..add(Insignia("USCG", "E", "9", "Master Chief Petty Officer of the Coast Guard", "USCG_MCPOCG.svg.png"))
    ..add(Insignia("USCG", "W", "2", "Chief Warrant Officer Two", "USCG_CW2_insignia.svg.png"))
    ..add(Insignia("USCG", "W", "3", "Chief Warrant Officer Three", "USCG_CW3_insignia.svg.png"))
    ..add(Insignia("USCG", "W", "4", "Chief Warrant Officer Four", "USCG_CW4_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "1", "Ensign", "USCG_O-1_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "2", "Lieutenant (Junior Grade)", "USCG_O-2_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "3", "Lieutenant", "USCG_O-3_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "4", "Lieutenant Commander", "USCG_O-4_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "5", "Commander", "USCG_O-5_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "6", "Captain", "USCG_O-6_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "7", "Rear Admiral (lower half)", "USCG_O-7_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "8", "Rear Admiral", "USCG_O-8_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "9", "Vice Admiral", "USCG_O-9_insignia.svg.png"))
    ..add(Insignia("USCG", "O", "10", "Admiral", "USCG_O-10_insignia.svg.png"));

// these are not to be displayed, but will match other services
  List<Insignia> extraUsnInsigniaList = []
    ..add(Insignia("USN", "O", "1", "Ensign", "USAF-O1.png"))
    ..add(Insignia("USN", "O", "2", "Lieutenant (Junior Grade)", "USAF-O2.png"))
    ..add(Insignia("USN", "O", "3", "Lieutenant", "USAF-O3.png"))
    ..add(Insignia("USN", "O", "4", "Lieutenant Commander", "USAF-O4.png"))
    ..add(Insignia("USN", "O", "5", "Commander", "USAF-O5.png"))
    ..add(Insignia("USN", "O", "6", "Captain", "USAF-O6.png"))
    ..add(Insignia("USN", "O", "7", "Rear Admiral (lower half)", "USAF-O7.png"))
    ..add(Insignia("USN", "O", "8", "Rear Admiral", "USAF-O8.png"))
    ..add(Insignia("USN", "O", "9", "Vice Admiral", "USAF-O9.png"))
    ..add(Insignia("USN", "O", "10", "Admiral", "USAF-O10.png"))
    ..add(Insignia("USN", "O", "11", "Fleet Admiral", "USAF-O11.png"));

  List<Insignia> extraUscgInsigniaList = []
    ..add(Insignia("USCG", "O", "1", "Ensign", "USAF-O1.png"))
    ..add(Insignia("USCG", "O", "2", "Lieutenant (Junior Grade)", "USAF-O2.png"))
    ..add(Insignia("USCG", "O", "3", "Lieutenant", "USAF-O3.png"))
    ..add(Insignia("USCG", "O", "4", "Lieutenant Commander", "USAF-O4.png"))
    ..add(Insignia("USCG", "O", "5", "Commander", "USAF-O5.png"))
    ..add(Insignia("USCG", "O", "6", "Captain", "USAF-O6.png"))
    ..add(Insignia("USCG", "O", "7", "Rear Admiral (lower half)", "USAF-O7.png"))
    ..add(Insignia("USCG", "O", "8", "Rear Admiral", "USAF-O8.png"))
    ..add(Insignia("USCG", "O", "9", "Vice Admiral", "USAF-O9.png"))
    ..add(Insignia("USCG", "O", "10", "Admiral", "USAF-O10.png"));

  late List<List<Insignia>> extraInsigniaList;

  late List<List<Insignia>> duplicateCheckList;

  late List<List<Insignia>> currentInsigniaList;

}
