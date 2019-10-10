.class public Lcom/xiaomi/accountsdk/account/data/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->a:Ljava/lang/String;

    if-eqz p2, :cond_1f

    .line 50
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->b:Ljava/lang/String;

    .line 51
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->g:Ljava/lang/String;

    .line 52
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->c:Ljava/lang/String;

    .line 53
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->d:Ljava/lang/String;

    .line 54
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->e:Ljava/util/ArrayList;

    .line 55
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->f:Ljava/lang/String;

    :cond_1f
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->f:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/p;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/p;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method
