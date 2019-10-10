.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Income"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field private static final synthetic h:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 338
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "LESS_2K"

    const-string v2, "less2000"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 339
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_2K_4K"

    const-string v2, "less4000"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 340
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_4K_6K"

    const-string v2, "less6000"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 341
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_6K_8K"

    const-string v2, "less8000"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 342
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_8K_12K"

    const-string v2, "less12000"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 343
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "OVER_12K"

    const-string v2, "over12000"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const/4 v0, 0x6

    .line 337
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->f:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->h:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

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

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 348
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .registers 7

    .line 352
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 355
    :cond_8
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-result-object v0

    .line 356
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 357
    iget-object v5, v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->g:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .registers 2

    .line 337
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .registers 1

    .line 337
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->h:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object v0
.end method
