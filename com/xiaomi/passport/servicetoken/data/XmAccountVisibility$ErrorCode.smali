.class public final enum Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum e:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum h:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field private static final synthetic j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;


# instance fields
.field i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 14
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NONE"

    const-string v2, "successful"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 15
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NOT_SUPPORT"

    const-string v2, "no support account service"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 16
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_PRE_ANDROID_O"

    const-string v2, "no support account service, and pre o version"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 17
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NO_ACCOUNT"

    const-string v2, "no account"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 18
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NO_PERMISSION"

    const-string v2, "no access account service permission"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->e:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 19
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_CANCELLED"

    const-string v2, "task cancelled"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 20
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_EXECUTION"

    const-string v2, "execution error"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 21
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "unknown"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->h:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->e:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->h:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .registers 2

    .line 13
    const-class v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .registers 1

    .line 13
    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->j:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object v0
.end method
