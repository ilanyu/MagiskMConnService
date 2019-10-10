.class public Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;
.super Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByPassToken"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/o;)V
    .registers 2

    .line 194
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
    .registers 4

    .line 202
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 203
    new-instance p2, Lcom/xiaomi/accountsdk/request/PassportCARequest;

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)V

    return-object p2
.end method

.method protected a(Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .registers 3

    .line 198
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "byPassToken"

    return-object v0
.end method
