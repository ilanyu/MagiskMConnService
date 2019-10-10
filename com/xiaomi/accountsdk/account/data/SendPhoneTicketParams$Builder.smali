.class public Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->b:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 85
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/h;->a(Landroid/app/Application;)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->b:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->e:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;
    .registers 3

    .line 90
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;-><init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
