.class public Lcom/xiaomi/accountsdk/request/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/xiaomi/accountsdk/utils/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/xiaomi/accountsdk/utils/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lcom/xiaomi/accountsdk/utils/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/xiaomi/accountsdk/utils/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/utils/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    .line 9
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    .line 10
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    .line 11
    new-instance v0, Lcom/xiaomi/accountsdk/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/o;->e:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/o;
    .registers 2

    .line 58
    new-instance v0, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    .line 59
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Lcom/xiaomi/accountsdk/request/o;)V

    return-object v0
.end method

.method protected final a(Lcom/xiaomi/accountsdk/request/o;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->d(Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->c(Ljava/util/Map;)V

    .line 70
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->b(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/request/o;->e:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Z)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->g:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/o;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/o;->g:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 27
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->a:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/o;->e:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/k;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 37
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->c:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 47
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->d:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 53
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/o;->b:Lcom/xiaomi/accountsdk/utils/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/utils/k;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method
