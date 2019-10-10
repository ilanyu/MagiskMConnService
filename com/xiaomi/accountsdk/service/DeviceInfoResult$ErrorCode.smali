.class public final enum Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum c:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum e:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public static final enum g:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field private static final synthetic h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 25
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->a:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 26
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 27
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_APP_PERMISSION_FORBIDDEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->c:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 28
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_TIME_OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 29
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_NOT_SUPPORTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->e:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 30
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_EXECUTION_EXCEPTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 31
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v1, "ERROR_QUERY_TOO_FREQUENTLY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->g:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const/4 v0, 0x7

    .line 23
    new-array v0, v0, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->a:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->c:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->e:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->g:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    .registers 2

    .line 23
    const-class v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    .registers 1

    .line 23
    sget-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    return-object v0
.end method
