.class public Lcom/xiaomi/mistatistic/sdk/controller/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s;->a:Ljava/util/List;

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .registers 3

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 44
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_f

    instance-of p1, p1, Landroid/widget/GridView;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/d;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 5

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_3e

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 26
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s;->a:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v1, p1}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 27
    :cond_17
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 28
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s;->a:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/d;

    invoke-direct {v1, p1}, Lcom/xiaomi/mistatistic/sdk/data/d;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_27
    :goto_27
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3e

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_3e

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3e
    return-void
.end method
