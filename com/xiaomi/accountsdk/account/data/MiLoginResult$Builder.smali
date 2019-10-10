.class public Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/accountsdk/account/data/h;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->a:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->c:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/h;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->f:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)I
    .registers 1

    .line 116
    iget p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->h:I

    return p0
.end method

.method static synthetic i(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->j:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 158
    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->h:I

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->c:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->f:Lcom/xiaomi/accountsdk/account/data/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->i:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .registers 3

    .line 173
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 168
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->j:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->e:Ljava/lang/String;

    return-object p0
.end method
