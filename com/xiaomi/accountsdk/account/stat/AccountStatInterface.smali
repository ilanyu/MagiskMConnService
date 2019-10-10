.class public abstract Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;-><init>(Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$1;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .registers 1

    .line 25
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;)V
    .registers 1

    .line 29
    sput-object p0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "http://dummyurl/"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    const-string v0, "\\?"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1f

    const/4 p0, 0x0

    .line 42
    aget-object p0, v0, p0

    return-object p0

    :cond_1f
    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
