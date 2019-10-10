.class public Lcom/miui/vsimcore/ProvisionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "android.system.com.miui.virtualsim.agree_protocal_flag"

.field private static final b:Ljava/lang/String; = "VSC-ProvisionReceiver"

.field private static final c:Ljava/lang/String; = "android.provision.action.PROVISION_COMPLETE"

.field private static final d:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final e:Ljava/lang/String; = "com.miui.vsimcore.pref.guide.REQUEST_TIME"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.virtualsim.action.LAUNCH_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.virtualsim"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_launch_type"

    const-string v2, "type_provision_complete"

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_launch_channel"

    const-string v2, "virtualsim_channel_provision"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "VSC-ProvisionReceiver"

    const-string v0, "send provision_complete broadcast to VirtualSim"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtualsim_enable_from"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string p1, "VSC-ProvisionReceiver"

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealGuide: has enabled from = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    const-string v0, "com.miui.vsimcore.pref.guide.REQUEST_TIME"

    const-wide/16 v1, 0x0

    .line 72
    invoke-static {v0, v1, v2}, Lcom/miui/vsimcore/utils/f;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v0, v0, v4

    if-gtz v0, :cond_54

    return-void

    :cond_54
    const-string v0, "VSC-ProvisionReceiver"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealGuide: accessChannel = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.miui.vsimcore.pref.guide.REQUEST_TIME"

    .line 81
    invoke-static {v0, v2, v3}, Lcom/miui/vsimcore/utils/f;->a(Ljava/lang/String;J)V

    .line 82
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/ProvisionReceiver;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/miui/vsimcore/ProvisionReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7c

    .line 85
    :cond_79
    invoke-static {p1, p2}, Lcom/miui/vsimcore/service/GuideService;->schedule(Landroid/content/Context;Ljava/lang/String;)V

    :goto_7c
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.mimobile.action.MISIM_GUIDE_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.virtualsim"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accessChannel"

    .line 102
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "needRequest"

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x20

    .line 104
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "VSC-ProvisionReceiver"

    const-string p2, "send MISIM_GUIDE_RECEIVER"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .registers 3

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android.system.com.miui.virtualsim.agree_protocal_flag"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "VSC-ProvisionReceiver"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.provision.action.PROVISION_COMPLETE"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/ProvisionReceiver;->a(Landroid/content/Context;)V

    const-string p2, "boot_channel"

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/vsimcore/ProvisionReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7f

    :cond_2b
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_41

    const/4 v1, 0x1

    :cond_41
    if-nez v1, :cond_44

    return-void

    .line 44
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p2, "VSC-ProvisionReceiver"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: elapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x927c0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_6b

    const-string p2, "reboot_channel"

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/vsimcore/ProvisionReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6b
    const-string p2, "phone"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x5

    .line 53
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p2

    if-ne v0, p2, :cond_7f

    const-string p2, "change_card_channel"

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/vsimcore/ProvisionReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    return-void
.end method
