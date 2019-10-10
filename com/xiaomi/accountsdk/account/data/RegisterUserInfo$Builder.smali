.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)I
    .registers 1

    .line 139
    iget p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)J
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->i:J

    return-wide v0
.end method

.method static synthetic j(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->l:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 158
    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a:I

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 3

    .line 198
    iput-wide p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->i:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 193
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->h:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 3

    .line 217
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 202
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->j:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->k:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 212
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->l:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
