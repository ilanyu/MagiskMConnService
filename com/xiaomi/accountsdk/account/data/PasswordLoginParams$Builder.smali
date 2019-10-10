.class public Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
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

.field private h:Lcom/xiaomi/accountsdk/account/data/h;

.field private i:Z

.field private j:Z

.field private k:[Ljava/lang/String;

.field private l:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->i:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->h:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)[Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->k:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->l:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->l:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->h:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->i:Z

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->k:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
    .registers 3

    .line 86
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->j:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
