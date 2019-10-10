.class public Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/data/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->f:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
    .registers 3

    .line 62
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->h:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
