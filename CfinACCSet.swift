//
//  CfinACCSet.swift
//  ApproveSolman
//
//  Created by Gurkan Yilmaz on 10/08/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import Foundation

class fiDoc{
    var mandt : String?
    var acchdGuid : String?
    var itemNo : String?
    var bukrs : String?
    var gjahr : String?
    var awtyp : String?
    var aworg : String?
    var kunnr : String?
    var hkont : String?
    var logSystemSender: String?
    var bukrsSender : String?
    var curtyp : String?
    var waers : String?
    var wrbtr : String?
    
    
    init( mandt : String, acchdGuid : String, itemNo : String, bukrs : String, gjahr : String, awtyp : String,
          aworg : String, kunnr : String, hkont : String, logSystemSender: String, bukrsSender : String,
          curtyp :String, waers : String, wrbtr : String){
        self.mandt = mandt
        self.acchdGuid = acchdGuid
        self.itemNo = itemNo
        self.bukrs = bukrs
        self.gjahr = gjahr
        self.awtyp = awtyp
        self.aworg = aworg
        self.kunnr = kunnr
        self.hkont = hkont
        self.logSystemSender = logSystemSender
        self.bukrsSender = bukrsSender
        self.curtyp = curtyp
        self.waers = waers
        self.wrbtr = wrbtr


    }


}