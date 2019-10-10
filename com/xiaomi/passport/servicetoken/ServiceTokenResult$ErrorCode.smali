.class public final enum Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum e:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum h:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum i:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field private static final synthetic l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 29
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 30
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 31
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_NO_ACCOUNT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 32
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_APP_PERMISSION_FORBIDDEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 33
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_IOERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 34
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 35
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_CANCELLED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 36
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_AUTHENTICATOR_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->h:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 37
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_TIME_OUT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->i:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 38
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_REMOTE_EXCEPTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 39
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_USER_INTERACTION_NEEDED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const/16 v0, 0xb

    .line 28
    new-array v0, v0, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->h:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->i:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->k:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v1, v0, v12

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .registers 2

    .line 28
    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .registers 1

    .line 28
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->l:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object v0
.end method
