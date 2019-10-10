.class public Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)[Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->g:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 71
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;
    .registers 3

    .line 96
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
