.class public Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->f:Z

    .line 30
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->g:Z

    .line 32
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->g:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->f:Z

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;
    .registers 3

    .line 58
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->g:Z

    return-object p0
.end method
