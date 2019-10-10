.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field private static final synthetic g:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 395
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const-string v1, "BASE_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 396
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const-string v1, "BIND_ADDRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 397
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const-string v1, "EXTRA_INFO"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 398
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const-string v1, "SETTING_INFO"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 399
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const-string v1, "SECURITY_STATUS"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v5, v7}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    const/4 v0, 0x5

    .line 394
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->a:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->b:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->c:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->d:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->e:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->g:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
    .registers 2

    .line 394
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
    .registers 1

    .line 394
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->g:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    return-object v0
.end method
