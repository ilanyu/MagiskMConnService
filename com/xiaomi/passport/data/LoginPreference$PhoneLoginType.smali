.class public final enum Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/data/LoginPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneLoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

.field public static final enum b:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

.field private static final synthetic d:[Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 17
    new-instance v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    const-string v1, "ticket"

    const-string v2, "ticket"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->a:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    .line 18
    new-instance v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    const-string v1, "password"

    const-string v2, "password"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->b:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    sget-object v1, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->a:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->b:Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->d:[Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;
    .registers 2

    .line 16
    const-class v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;
    .registers 1

    .line 16
    sget-object v0, Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->d:[Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/data/LoginPreference$PhoneLoginType;

    return-object v0
.end method
