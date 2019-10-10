.class final enum Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/XMPassport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckAvailibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field private static final synthetic c:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 178
    new-instance v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->a:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const-string v1, "PHONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->b:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->a:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->b:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->c:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .registers 2

    .line 177
    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .registers 1

    .line 177
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->c:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    return-object v0
.end method
