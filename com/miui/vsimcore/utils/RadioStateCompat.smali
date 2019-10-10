.class public Lcom/miui/vsimcore/utils/RadioStateCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/utils/RadioStateCompat$Holder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VS-RadioStateCompat"


# instance fields
.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/miui/vsimcore/utils/RadioStateCompat;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/vsimcore/utils/RadioStateCompat$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/miui/vsimcore/utils/RadioStateCompat;-><init>()V

    return-void
.end method

.method public static a()Lcom/miui/vsimcore/utils/RadioStateCompat;
    .registers 1

    .line 22
    sget-object v0, Lcom/miui/vsimcore/utils/RadioStateCompat$Holder;->a:Lcom/miui/vsimcore/utils/RadioStateCompat;

    return-object v0
.end method

.method private a(Landroid/os/Handler;I)V
    .registers 6

    const-string v0, "VS-RadioStateCompat"

    const-string v1, "registerM"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, "getActivePhone"

    const/4 v2, 0x0

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mCi"

    .line 74
    invoke-static {v0, v1}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface;

    .line 75
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xa

    invoke-interface {v0, p1, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 p2, 0xb

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/os/Handler;I)V
    .registers 6

    const-string v0, "VS-RadioStateCompat"

    const-string v1, "registerN"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, "mCi"

    .line 88
    invoke-static {v0, v1}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xa

    invoke-interface {v0, p1, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 p2, 0xb

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private b(I)Z
    .registers 4

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object p1, v0, p1

    const-string v0, "getActivePhone"

    const/4 v1, 0x0

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mCi"

    .line 45
    invoke-static {p1, v0}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CommandsInterface;

    .line 46
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result p1

    return p1
.end method

.method private c(I)Z
    .registers 3

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object p1, v0, p1

    const-string v0, "mCi"

    .line 53
    invoke-static {p1, v0}, Lcom/miui/vsimcore/utils/a/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CommandsInterface;

    .line 54
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .registers 4

    .line 58
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 59
    :goto_7
    iget v0, p0, Lcom/miui/vsimcore/utils/RadioStateCompat;->b:I

    if-ge v1, v0, :cond_21

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/miui/vsimcore/utils/RadioStateCompat;->a(Landroid/os/Handler;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 62
    :cond_11
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->e()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 63
    :goto_17
    iget v0, p0, Lcom/miui/vsimcore/utils/RadioStateCompat;->b:I

    if-ge v1, v0, :cond_21

    .line 64
    invoke-direct {p0, p1, v1}, Lcom/miui/vsimcore/utils/RadioStateCompat;->b(Landroid/os/Handler;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method public a(I)Z
    .registers 3

    .line 30
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->d()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_8
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/utils/RadioStateCompat;->b(I)Z

    move-result p1

    return p1

    .line 35
    :cond_13
    invoke-direct {p0, p1}, Lcom/miui/vsimcore/utils/RadioStateCompat;->c(I)Z

    move-result p1

    return p1
.end method
