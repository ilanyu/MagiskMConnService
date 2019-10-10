.class public final enum Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field public static final enum e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field private static final synthetic f:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 16
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "AUTH_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 17
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "NEED_RESYNC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 18
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "RETRIABLE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 19
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "UNRETRIABLE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const/4 v0, 0x5

    .line 14
    new-array v0, v0, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->f:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 14
    const-class v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 1

    .line 14
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->f:[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object v0
.end method
