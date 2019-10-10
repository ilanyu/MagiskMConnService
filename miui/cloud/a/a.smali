.class public Lmiui/cloud/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CloudSysHelper"

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.android.contacts"

    const-string v1, "sms"

    const-string v2, "com.miui.gallery.cloud.provider"

    .line 42
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/a/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    .line 29
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 1

    .line 38
    invoke-static {p0}, Lmiui/cloud/a/a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 8

    .line 51
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_f

    const-string p0, "CloudSysHelper"

    const-string v1, "Account is null in isMainSyncsOff()"

    .line 55
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 60
    :cond_f
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string p0, "CloudSysHelper"

    const-string v1, "Master sync is off in isMainSyncsOff()"

    .line 61
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 65
    :cond_1d
    sget-object v1, Lmiui/cloud/a/a;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_46

    aget-object v5, v1, v4

    .line 66
    invoke-static {p0, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    const-string p0, "CloudSysHelper"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is off in isMainSyncsOff()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_46
    return v3
.end method

.method public static d(Landroid/content/Context;)V
    .registers 1

    .line 78
    invoke-static {p0}, Lmiui/cloud/a/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .registers 1

    .line 85
    invoke-static {p0}, Lmiui/cloud/a/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_INFO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
