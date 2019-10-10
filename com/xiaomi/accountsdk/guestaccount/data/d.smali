.class public final enum Lcom/xiaomi/accountsdk/guestaccount/data/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/guestaccount/data/d;

.field public static final enum b:Lcom/xiaomi/accountsdk/guestaccount/data/d;

.field public static final enum c:Lcom/xiaomi/accountsdk/guestaccount/data/d;

.field private static final synthetic d:[Lcom/xiaomi/accountsdk/guestaccount/data/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    const-string v1, "USE_MIUI_GUEST_ACCOUNT_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->a:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    const-string v1, "USE_APP_GUEST_ACCOUNT_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->b:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    .line 6
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    const-string v1, "TRY_MIUI_THEN_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->c:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/xiaomi/accountsdk/guestaccount/data/d;

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/d;->a:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/d;->b:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/d;->c:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->d:[Lcom/xiaomi/accountsdk/guestaccount/data/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;
    .registers 2

    .line 3
    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/guestaccount/data/d;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->d:[Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/guestaccount/data/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/guestaccount/data/d;

    return-object v0
.end method
