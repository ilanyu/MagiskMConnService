.class public final enum Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/PassportUserEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TelePhonyInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum b:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum c:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum d:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field private static final synthetic f:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;


# instance fields
.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 76
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "SUBSCRIBE_ID"

    const-string v2, "getSubscriberIdForSlot"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->a:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 77
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "SERIAL_NUMBER"

    const-string v2, "getSimSerialNumberForSlot"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->b:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 78
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "OPERATOR"

    const-string v2, "getSimOperatorForSlot"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->c:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 79
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "DEVICE_ID_LIST"

    const-string v2, "getDeviceIdList"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->d:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const/4 v0, 0x4

    .line 75
    new-array v0, v0, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->a:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->b:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->c:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->d:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->f:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p3, p0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .registers 2

    .line 75
    const-class v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .registers 1

    .line 75
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->f:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    return-object v0
.end method
