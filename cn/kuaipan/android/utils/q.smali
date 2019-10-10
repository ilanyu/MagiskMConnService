.class public Lcn/kuaipan/android/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field private static b:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/utils/q;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    .line 22
    invoke-static {}, Lcn/kuaipan/android/utils/q;->c()Ljava/util/Random;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 5

    .line 32
    invoke-static {}, Lcn/kuaipan/android/utils/q;->c()Ljava/util/Random;

    move-result-object v0

    .line 34
    div-int/lit8 v1, p0, 0x4

    rem-int/lit8 v2, p0, 0x4

    const/4 v3, 0x0

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    .line 35
    new-array v1, v1, [B

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v0, 0x2

    .line 37
    invoke-static {v1, v0}, Lcn/kuaipan/android/utils/Base64;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_25

    .line 40
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public static a(I[C)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_7

    .line 48
    invoke-static {p0}, Lcn/kuaipan/android/utils/q;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_7
    invoke-static {}, Lcn/kuaipan/android/utils/q;->c()Ljava/util/Random;

    move-result-object v0

    .line 52
    new-array v1, p0, [C

    .line 53
    array-length v2, p1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, p0, :cond_1c

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v4, p1, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 58
    :cond_1c
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()J
    .registers 2

    .line 27
    invoke-static {}, Lcn/kuaipan/android/utils/q;->c()Ljava/util/Random;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c()Ljava/util/Random;
    .registers 2

    .line 14
    sget-object v0, Lcn/kuaipan/android/utils/q;->b:Ljava/security/SecureRandom;

    if-nez v0, :cond_16

    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/q;->b:Ljava/security/SecureRandom;

    .line 16
    sget-object v0, Lcn/kuaipan/android/utils/q;->b:Ljava/security/SecureRandom;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 18
    :cond_16
    sget-object v0, Lcn/kuaipan/android/utils/q;->b:Ljava/security/SecureRandom;

    return-object v0
.end method
