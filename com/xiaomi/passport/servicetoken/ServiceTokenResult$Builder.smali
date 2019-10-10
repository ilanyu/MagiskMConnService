.class public final Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field private g:Landroid/content/Intent;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 165
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 3

    .line 229
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 232
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->i:Landroid/content/Intent;

    .line 235
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->j:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->k:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    .line 239
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    .line 240
    invoke-static {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->n:Ljava/lang/String;

    .line 241
    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Landroid/content/Intent;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->l:Z

    return p0
.end method

.method static synthetic m(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 214
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->k:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 3

    .line 245
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->l:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->m:Ljava/lang/String;

    return-object p0
.end method
