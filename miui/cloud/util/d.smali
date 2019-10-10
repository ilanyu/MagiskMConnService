.class public Lmiui/cloud/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SysHelper"

.field private static final b:I = 0xf

.field private static final c:I = 0xe

.field private static final d:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-static {v0, p0, p1}, Lmiui/cloud/util/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    long-to-float p0, p1

    const-string p1, "MB"

    const p2, 0x4ccccccd    # 1.07374184E8f

    cmpl-float p2, p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x44800000    # 1024.0f

    if-lez p2, :cond_22

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    const-string p1, "%1$.2f"

    .line 75
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GB"

    goto :goto_44

    :cond_22
    const p2, 0x47cccccd

    cmpl-float p2, p0, p2

    if-lez p2, :cond_3a

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    const-string p2, "%1$.2f"

    .line 80
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3a
    const/4 p2, 0x0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_42

    const-string p0, "0.1"

    goto :goto_44

    :cond_42
    const-string p0, "0"

    .line 85
    :goto_44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v1, :cond_63

    const-string p2, "SysHelper"

    const-string v3, "getQuantityStringWithUnit: RTL"

    .line 86
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "%s%s"

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p0, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    const-string p2, "SysHelper"

    const-string v3, "getQuantityStringWithUnit: LTR"

    .line 89
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "%s%s"

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 7

    .line 209
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 210
    div-int p1, v0, p1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_23

    if-lt v2, p1, :cond_19

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p1, :cond_17

    goto :goto_19

    :cond_17
    move v3, p2

    goto :goto_1d

    .line 215
    :cond_19
    :goto_19
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 217
    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 219
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    if-ltz p2, :cond_2e

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    :cond_6
    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    .line 232
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    div-int/lit8 v1, v1, 0x5

    add-int/2addr p1, v1

    if-le p1, p2, :cond_15

    move p1, p2

    .line 238
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 239
    array-length p2, p0

    sub-int/2addr p2, v0

    :goto_1b
    if-ltz p2, :cond_28

    array-length v0, p0

    sub-int/2addr v0, p1

    if-lt p2, v0, :cond_28

    const/16 v0, 0x3f

    .line 240
    aput-char v0, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1b

    .line 242
    :cond_28
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 224
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxMaskLength must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lmiui/cloud/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 108
    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Z
    .registers 1

    .line 250
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 134
    invoke-static {p0}, Lmiui/cloud/util/d;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 146
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-ge p0, v0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lmiui/cloud/util/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 122
    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(J)Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0xf

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1e

    const-wide/16 v3, 0xa

    .line 158
    rem-long v5, p0, v3

    long-to-int v5, v5

    .line 159
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_19

    mul-int/lit8 v5, v5, 0x2

    .line 161
    div-int/lit8 v6, v5, 0xa

    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v6, v5

    add-int/2addr v2, v6

    goto :goto_1a

    :cond_19
    add-int/2addr v2, v5

    .line 167
    :goto_1a
    div-long/2addr p0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 171
    :cond_1e
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    .line 181
    invoke-static {p0}, Lmiui/cloud/util/d;->e(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 246
    invoke-static {p0, v0, v1}, Lmiui/cloud/util/d;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 194
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_5

    return-void

    .line 198
    :cond_5
    :try_start_5
    invoke-static {p1}, Lmiui/cloud/util/d;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string p1, "SysHelper"

    const-string v0, "show device id invalid warning failed: "

    .line 200
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method private static d(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_id"

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 2

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method
