.class public final enum Lcom/xiaomi/accountsdk/account/data/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/f;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/f;

.field private static final synthetic d:[Lcom/xiaomi/accountsdk/account/data/f;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/f;

    const-string v1, "MALE"

    const-string v2, "m"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/data/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/f;->a:Lcom/xiaomi/accountsdk/account/data/f;

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/f;

    const-string v1, "FEMALE"

    const-string v2, "f"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/f;->b:Lcom/xiaomi/accountsdk/account/data/f;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/f;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/f;->a:Lcom/xiaomi/accountsdk/account/data/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/f;->b:Lcom/xiaomi/accountsdk/account/data/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/f;->d:[Lcom/xiaomi/accountsdk/account/data/f;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/f;
    .registers 2

    .line 3
    const-class v0, Lcom/xiaomi/accountsdk/account/data/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/f;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/f;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/f;->d:[Lcom/xiaomi/accountsdk/account/data/f;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/f;->c:Ljava/lang/String;

    return-object v0
.end method
