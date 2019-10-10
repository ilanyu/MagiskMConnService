.class public Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    .registers 2

    .line 63
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/h;->a(Landroid/app/Application;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    .registers 4

    .line 46
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->c:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->d:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;
    .registers 3

    .line 68
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;-><init>(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
