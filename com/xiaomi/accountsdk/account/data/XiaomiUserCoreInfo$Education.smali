.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum g:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field private static final synthetic i:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 366
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MIDDLE_SCHOOL"

    const-string v2, "junior"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 367
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "PREP_SCHOOL"

    const-string v2, "technical"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 368
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "HIGH_SCHOOL"

    const-string v2, "senior"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 369
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "VOCATIONAL_SCHOOL"

    const-string v2, "college"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 370
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "COLLEGE"

    const-string v2, "bachelor"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 371
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MASTER_DEGREE"

    const-string v2, "master"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 372
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "DOCTOR_AND_ABOVE"

    const-string v2, "doctor"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->g:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const/4 v0, 0x7

    .line 365
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->g:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v9

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->i:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 377
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .registers 7

    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 384
    :cond_8
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v0

    .line 385
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 386
    iget-object v5, v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->h:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .registers 2

    .line 365
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .registers 1

    .line 365
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->i:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object v0
.end method
