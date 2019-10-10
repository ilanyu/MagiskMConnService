.class public Lcom/miui/vsimcore/provider/SettingProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "value"

.field private static final B:Ljava/lang/String; = "enable"

.field private static final C:Ljava/lang/String; = "slotid"

.field private static final D:Ljava/lang/String; = "imsi"

.field private static final E:Ljava/lang/String; = "iccid"

.field private static final F:Ljava/lang/String; = "dconly"

.field private static final G:Ljava/lang/String; = "appname"

.field private static final H:Ljava/lang/String; = "from"

.field private static final I:Ljava/lang/String; = "to"

.field private static final J:Ljava/lang/String; = "path"

.field private static final K:Ljava/lang/String; = "time"

.field private static final L:Ljava/lang/String; = "uid"

.field private static final M:Ljava/lang/String; = "networktype"

.field private static final N:Ljava/lang/String; = "type"

.field private static final O:Ljava/lang/String; = "dunapn"

.field private static final P:Ljava/lang/String; = "totalSize"

.field private static final Q:Ljava/lang/String; = "todaySize"

.field private static final R:Ljava/lang/String; = "remainSize"

.field private static final S:Ljava/lang/String; = "action"

.field private static final T:Ljava/lang/String; = "status"

.field private static U:J = 0x0L

.field private static V:J = 0x0L

.field private static final b:Ljava/lang/String; = "setSystemProperties"

.field private static final c:Ljava/lang/String; = "catchLog"

.field private static final d:Ljava/lang/String; = "toggleFlightMode"

.field private static final e:Ljava/lang/String; = "setDataEnabled"

.field private static final f:Ljava/lang/String; = "qcRilSetLteTuneaway"

.field private static final g:Ljava/lang/String; = "setDefaultDataSlotId"

.field private static final h:Ljava/lang/String; = "setSystemSetting"

.field private static final i:Ljava/lang/String; = "setCloudSimInfo"

.field private static final j:Ljava/lang/String; = "clearCloudSimInfo"

.field private static final k:Ljava/lang/String; = "getNetworkMobileTotalBytes"

.field private static final l:Ljava/lang/String; = "getMobileSummaryForAllUid"

.field private static final m:Ljava/lang/String; = "readNetDataBytes"

.field private static final n:Ljava/lang/String; = "readNetDataUid"

.field private static final o:Ljava/lang/String; = "setRestartAfterCrash"

.field private static final p:Ljava/lang/String; = "setMobileRestrict"

.field private static final q:Ljava/lang/String; = "isMobileRestrict"

.field private static final r:Ljava/lang/String; = "setPreferredNetworkType"

.field private static final s:Ljava/lang/String; = "getTetherState"

.field private static final t:Ljava/lang/String; = "setTethering"

.field private static final u:Ljava/lang/String; = "forceUpdate"

.field private static final v:Ljava/lang/String; = "setTetherDunApn"

.field private static final w:Ljava/lang/String; = "setCloudSimStatus"

.field private static final x:Ljava/lang/String; = "setSecCenterFlowInfo"

.field private static final y:Ljava/lang/String; = "location"

.field private static final z:Ljava/lang/String; = "key"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "VSC-SettingProvider"

    .line 43
    iput-object v0, p0, Lcom/miui/vsimcore/provider/SettingProvider;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "995"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "995995"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 190
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    if-nez p1, :cond_21

    const-string p1, "VSC-SettingProvider"

    const-string v0, "setDataEnabled extras is null"

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const-string v0, "enable"

    const/4 v2, -0x1

    .line 198
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    if-ne p1, v0, :cond_2e

    goto :goto_36

    :cond_2e
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setDataEnabled key mismatch"

    .line 202
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_36
    :goto_36
    if-ne p1, v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 200
    :goto_3a
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->a(Z)V

    :goto_3d
    return-object v1
.end method

.method private d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 208
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 209
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    if-nez p1, :cond_21

    const-string p1, "VSC-SettingProvider"

    const-string v0, "qcRilSetLteTuneaway extras is null"

    .line 213
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const-string v0, "enable"

    const/4 v2, -0x1

    .line 216
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "slotid"

    .line 217
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    if-ne v0, v2, :cond_38

    :cond_33
    if-eqz p1, :cond_40

    if-ne p1, v2, :cond_38

    goto :goto_40

    :cond_38
    const-string p1, "VSC-SettingProvider"

    const-string v0, "qcRilSetLteTuneaway key mismatch"

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_40
    :goto_40
    const-string v3, "VSC-SettingProvider"

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcRilSetLteTuneaway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", slotid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;)V

    if-ne v0, v2, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    .line 222
    :goto_6b
    invoke-virtual {v3, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetLteTuneaway(ZI)Z

    :goto_6e
    return-object v1
.end method

.method private e(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 230
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 231
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    if-nez p1, :cond_21

    const-string p1, "VSC-SettingProvider"

    const-string v0, "setDefaultDataSlotId extras is null"

    .line 235
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const-string v0, "slotid"

    const/4 v2, -0x1

    .line 238
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_36

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    goto :goto_36

    :cond_2e
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setDefaultDataSlotId key mismatch"

    .line 243
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_36
    :goto_36
    const-string v0, "VSC-SettingProvider"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultDataSlotId to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    :goto_53
    return-object v1
.end method

.method private f(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 249
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    if-nez p1, :cond_21

    const-string p1, "VSC-SettingProvider"

    const-string v0, "setSystemSetting extras is null"

    .line 254
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const-string v0, "location"

    const-string v2, ""

    .line 257
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key"

    const-string v3, ""

    .line 258
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    const-string v4, ""

    .line 259
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "VSC-SettingProvider"

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSystemSetting, location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Global"

    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 263
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a2

    :cond_7f
    const-string v3, "Secure"

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 265
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a2

    :cond_93
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setSystemSetting key mismatch"

    .line 267
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_9b
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setSystemSetting key mismatch"

    .line 270
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    return-object v1
.end method

.method private g(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    .line 277
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 278
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    if-nez p1, :cond_21

    const-string p1, "VSC-SettingProvider"

    const-string v0, "setCloudSimInfo extras is null"

    .line 282
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 285
    :cond_21
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string p1, "VSC-SettingProvider"

    const-string v0, "VirtualSim app don\'t exist"

    .line 286
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_33
    const-string v0, "imsi"

    const-string v2, ""

    .line 289
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "iccid"

    const-string v3, ""

    .line 290
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slotid"

    const/4 v4, -0x1

    .line 291
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "dconly"

    const/4 v5, 0x1

    .line 292
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "appname"

    const-string v7, ""

    .line 293
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f3

    :cond_65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f3

    if-eqz v3, :cond_6f

    if-ne v3, v5, :cond_f3

    :cond_6f
    const-string v5, "VSC-SettingProvider"

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCloudSimInfo imsi =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    if-le v7, v9, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    goto :goto_8a

    :cond_89
    const/4 v7, 0x0

    :goto_8a
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_a2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v7, -0x5

    :cond_a2
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", slotid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", dconly = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimImsi(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimIccId(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimSlotId(Landroid/content/Context;I)V

    .line 301
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimType(Landroid/content/Context;I)V

    .line 304
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->c(Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/miui/vsimcore/utils/c;->d(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "appname"

    .line 308
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "enable_vsim"

    const-string v2, "setCloudSimInfo"

    .line 309
    invoke-static {p1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_fa

    :cond_f3
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setCloudSimInfo param error "

    .line 311
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fa
    return-object v1
.end method

.method private h(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 317
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v1, "Cannot perform! returning failure"

    .line 318
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 322
    :cond_17
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->h()V

    const-string p1, "VSC-SettingProvider"

    const-string v1, "clearCloudSimInfo"

    .line 323
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private i(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    .line 329
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v1, "Cannot perform! returning failure"

    .line 330
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 334
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/miui/vsimcore/provider/SettingProvider;->U:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long p1, v1, v3

    if-gez p1, :cond_2c

    const-string p1, "VSC-SettingProvider"

    const-string v1, "call forceUpdate too frequently, ingore!!!"

    .line 335
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 338
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/miui/vsimcore/provider/SettingProvider;->U:J

    .line 340
    invoke-static {}, Lcom/miui/vsimcore/utils/h;->a()V

    const-string p1, "VSC-SettingProvider"

    const-string v1, "forceUpdate"

    .line 341
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private j(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    .line 347
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 348
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    const-string v0, "imsi"

    const-string v2, ""

    .line 351
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    const-wide/16 v3, -0x1

    .line 352
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "to"

    .line 353
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_62

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_62

    cmp-long p1, v2, v7

    if-ltz p1, :cond_62

    .line 355
    invoke-static {v0, v5, v6, v2, v3}, Lcom/miui/vsimcore/utils/h;->a(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-string p1, "VSC-SettingProvider"

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total"

    .line 358
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1

    :cond_62
    const-string p1, "VSC-SettingProvider"

    const-string v0, "getNetworkMobileTotalBytes param error"

    .line 361
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private k(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    .line 367
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 368
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    const-string v0, "imsi"

    const-string v2, ""

    .line 371
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    const-wide/16 v3, -0x1

    .line 372
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "to"

    .line 373
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_8f

    cmp-long p1, v2, v7

    if-ltz p1, :cond_8f

    .line 375
    invoke-static {v0, v5, v6, v2, v3}, Lcom/miui/vsimcore/utils/h;->b(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_96

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 381
    :cond_84
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 382
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    :cond_8f
    const-string p1, "VSC-SettingProvider"

    const-string v0, "getMobileSummaryForAllUid param error"

    .line 386
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return-object v1
.end method

.method private l(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 392
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 393
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    const-string v0, "path"

    const-string v2, ""

    .line 396
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 398
    invoke-static {p1}, Lcom/miui/vsimcore/utils/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 399
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total"

    .line 400
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1

    :cond_34
    const-string p1, "VSC-SettingProvider"

    const-string v0, "readNetDataBytes param error"

    .line 403
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 409
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 410
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    const-string v0, "path"

    const-string v2, ""

    .line 413
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid"

    const/16 v3, -0x2710

    .line 414
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_3e

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 416
    invoke-static {p1, v0}, Lcom/miui/vsimcore/utils/c;->a(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    .line 418
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_3e
    const-string p1, "VSC-SettingProvider"

    const-string v0, "readNetDataUid param error"

    .line 421
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private n(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 428
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 429
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 433
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/vsimcore/provider/SettingProvider;->V:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2d

    const-string p1, "VSC-SettingProvider"

    const-string v0, "call setRestartAfterCrash too frequently, ingore!!!"

    .line 434
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 437
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/vsimcore/provider/SettingProvider;->V:J

    const-string v0, "time"

    const-wide/16 v2, 0x0

    .line 438
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long p1, v2, v4

    if-gez p1, :cond_57

    .line 440
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 441
    new-instance v0, Lcom/miui/vsimcore/provider/SettingProvider$2;

    invoke-direct {v0, p0}, Lcom/miui/vsimcore/provider/SettingProvider$2;-><init>(Lcom/miui/vsimcore/provider/SettingProvider;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5e

    :cond_57
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setRestartAfterCrash param error"

    .line 448
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-object v1
.end method

.method private o(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 454
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 455
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_17
    const-string v0, "packageName"

    const-string v1, ""

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isRestrict"

    const/4 v2, 0x1

    .line 459
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "slotId"

    const/4 v4, -0x2

    .line 460
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 461
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_73

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3f

    if-eqz p1, :cond_3f

    if-ne p1, v2, :cond_73

    :cond_3f
    const-string v2, "VSC-SettingProvider"

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set setMobileRestrict packagename:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-slotid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p1

    const-string v0, "result"

    .line 466
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_80

    :cond_73
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setMobileRestrict param error"

    .line 468
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "result"

    const/4 v0, 0x0

    .line 469
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_80
    return-object v3
.end method

.method private p(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 475
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 476
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_17
    const-string v0, "packageName"

    const-string v1, ""

    .line 479
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slotId"

    const/4 v2, -0x2

    .line 480
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const/4 v2, -0x1

    if-eq p1, v2, :cond_39

    if-eqz p1, :cond_39

    const/4 v2, 0x1

    if-ne p1, v2, :cond_47

    .line 483
    :cond_39
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    const-string v0, "result"

    .line 484
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_54

    :cond_47
    const-string p1, "VSC-SettingProvider"

    const-string v0, "isMobileRestrict param error"

    .line 486
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "result"

    const/4 v0, 0x0

    .line 487
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_54
    return-object v1
.end method

.method private q(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 493
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 494
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_17
    const-string v0, "slotid"

    const/4 v1, -0x1

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "networktype"

    .line 498
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 499
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_2e

    const/4 v3, 0x1

    if-ne v0, v3, :cond_42

    :cond_2e
    if-eq p1, v1, :cond_42

    .line 501
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 502
    invoke-static {v0, p1}, Lcom/miui/vsimcore/utils/a/c;->a(II)Z

    move-result p1

    const-string v0, "result"

    .line 503
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4f

    :cond_42
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setPreferredNetworkType param error"

    .line 505
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "result"

    const/4 v0, 0x0

    .line 506
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_4f
    return-object v2
.end method

.method private r(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 512
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 513
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 516
    :cond_17
    invoke-static {}, Lcom/miui/vsimcore/utils/TetherManager;->a()Lcom/miui/vsimcore/utils/TetherManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/vsimcore/utils/TetherManager;->b()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private s(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 520
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 521
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    const-string v0, "type"

    const/4 v2, -0x1

    .line 525
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "enable"

    const/4 v3, 0x0

    .line 526
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v0, :cond_33

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    goto :goto_33

    :cond_2b
    const-string p1, "VSC-SettingProvider"

    const-string v0, "setTethering param error"

    .line 537
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_33
    :goto_33
    if-eqz p1, :cond_3d

    .line 532
    invoke-static {}, Lcom/miui/vsimcore/utils/TetherManager;->a()Lcom/miui/vsimcore/utils/TetherManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/TetherManager;->a(I)V

    goto :goto_44

    .line 534
    :cond_3d
    invoke-static {}, Lcom/miui/vsimcore/utils/TetherManager;->a()Lcom/miui/vsimcore/utils/TetherManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/TetherManager;->b(I)V

    :goto_44
    return-object v1
.end method

.method private t(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 544
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 545
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 548
    :cond_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dunapn"

    const-string v2, ""

    .line 549
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VSC-SettingProvider"

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set tether dun apn to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/miui/vsimcore/provider/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_apn"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "result"

    const/4 v1, 0x0

    .line 553
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private u(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 559
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 560
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 563
    :cond_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x2

    .line 564
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x1

    if-eq p1, v1, :cond_48

    if-ne p1, v2, :cond_2b

    goto :goto_48

    :cond_2b
    const-string v1, "VSC-SettingProvider"

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set setCloudSimStatus, invalid status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "result"

    const/4 v1, -0x1

    .line 571
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6b

    :cond_48
    :goto_48
    const-string v1, "VSC-SettingProvider"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set virtual_sim status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimStatus(Landroid/content/Context;I)V

    const-string p1, "result"

    const/4 v1, 0x0

    .line 568
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_6b
    return-object v0
.end method

.method private v(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    .line 578
    invoke-static {}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a()Lcom/miui/vsimcore/utils/WhiteListMgr;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string p1, "VSC-SettingProvider"

    const-string v0, "Cannot perform! returning failure"

    .line 579
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_17
    const-string v0, "totalSize"

    const-wide/16 v1, 0x0

    .line 583
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "todaySize"

    .line 584
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "remainSize"

    .line 585
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v0, "action"

    const-string v1, ""

    .line 586
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 587
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 588
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "VSC-SettingProvider"

    const-string v1, "set setSecCenterFlowInfo"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static/range {v3 .. v9}, Lcom/miui/vsimcore/utils/c;->a(JJJLjava/lang/String;)V

    const-string v0, "result"

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_62

    :cond_55
    const-string v0, "VSC-SettingProvider"

    const-string v1, "Cannot set setSecCenterFlowInfo,  returning failure"

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "result"

    const/4 v1, -0x1

    .line 594
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_62
    return-object p1
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 3

    const-string v0, "VSC-SettingProvider"

    const-string v1, "receive toggleFlightMode cmd"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/vsimcore/provider/SettingProvider$1;

    invoke-direct {v1, p0}, Lcom/miui/vsimcore/provider/SettingProvider$1;-><init>(Lcom/miui/vsimcore/provider/SettingProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "key"

    const-string v1, ""

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const-string v2, ""

    .line 150
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-eq v0, v1, :cond_17

    .line 152
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v1, "VSC-SettingProvider"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemProperties, key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string v0, "action"

    const-string v1, ""

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number"

    const-string v2, ""

    .line 160
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "needSetPackage"

    const/4 v3, 0x1

    .line 161
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 162
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_38

    const-string p1, "com.miui.bugreport"

    .line 165
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_38
    const/high16 p1, 0x10000000

    .line 167
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/miui/vsimcore/provider/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "VSC-SettingProvider"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catchLog, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", number is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string p2, "setSystemProperties"

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 97
    invoke-virtual {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p2, "catchLog"

    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 99
    invoke-virtual {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string p2, "toggleFlightMode"

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 101
    invoke-virtual {p0}, Lcom/miui/vsimcore/provider/SettingProvider;->a()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_27
    const-string p2, "setDataEnabled"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 103
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_34
    const-string p2, "qcRilSetLteTuneaway"

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 105
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_41
    const-string p2, "setDefaultDataSlotId"

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 107
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_4e
    const-string p2, "setSystemSetting"

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 109
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5b
    const-string p2, "setCloudSimInfo"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 111
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->g(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_68
    const-string p2, "clearCloudSimInfo"

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_75

    .line 113
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->h(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_75
    const-string p2, "getNetworkMobileTotalBytes"

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 115
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_82
    const-string p2, "readNetDataBytes"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 117
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->l(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_8f
    const-string p2, "readNetDataUid"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 119
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_9c
    const-string p2, "setRestartAfterCrash"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 121
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->n(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_a9
    const-string p2, "setMobileRestrict"

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 123
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->o(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_b6
    const-string p2, "isMobileRestrict"

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c3

    .line 125
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_c3
    const-string p2, "getMobileSummaryForAllUid"

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 127
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->k(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_d0
    const-string p2, "setPreferredNetworkType"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 129
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_dd
    const-string p2, "forceUpdate"

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ea

    .line 131
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->i(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_ea
    const-string p2, "getTetherState"

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 133
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->r(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_f7
    const-string p2, "setTethering"

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_104

    .line 135
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->s(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_104
    const-string p2, "setTetherDunApn"

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_111

    .line 137
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->t(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_111
    const-string p2, "setCloudSimStatus"

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11e

    .line 139
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->u(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_11e
    const-string p2, "setSecCenterFlowInfo"

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12b

    .line 141
    invoke-direct {p0, p3}, Lcom/miui/vsimcore/provider/SettingProvider;->v(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_12b
    const-string p2, "VSC-SettingProvider"

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " don\'t exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
