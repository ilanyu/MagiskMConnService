.class public final Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Z
    .registers 1

    .line 215
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->l:Z

    return p0
.end method

.method static synthetic m(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->l:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 3

    .line 299
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;Lcom/xiaomi/accountsdk/account/data/AccountInfo$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->m:Ljava/lang/String;

    return-object p0
.end method
