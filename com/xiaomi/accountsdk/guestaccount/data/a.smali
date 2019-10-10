.class Lcom/xiaomi/accountsdk/guestaccount/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:Landroid/os/Bundle;

    .line 15
    iget-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void

    .line 10
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "srcBundle == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 3

    .line 23
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/a;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
