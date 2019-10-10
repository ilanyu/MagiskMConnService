.class public Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/data/k;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Lcom/xiaomi/accountsdk/account/data/k;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a:Lcom/xiaomi/accountsdk/account/data/k;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a:Lcom/xiaomi/accountsdk/account/data/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->e:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;
    .registers 3

    .line 56
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;-><init>(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
