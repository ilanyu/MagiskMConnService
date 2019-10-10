.class public Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
.super Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByPassword"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/xiaomi/accountsdk/account/data/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/o;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/h;)V
    .registers 5

    .line 139
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 140
    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->a:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->b:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->c:Lcom/xiaomi/accountsdk/account/data/h;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->c:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
    .registers 4

    .line 182
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    .line 183
    new-instance p2, Lcom/xiaomi/accountsdk/request/PassportCARequest;

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)V

    return-object p2
.end method

.method protected a(Lcom/xiaomi/accountsdk/request/o;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .registers 3

    .line 151
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;-><init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;Lcom/xiaomi/accountsdk/request/o;)V

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "byPassword"

    return-object v0
.end method
