.class Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final a:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/android/volley/q;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    .line 436
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a:Lcom/android/volley/Request;

    .line 437
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/volley/q;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c:Lcom/android/volley/q;

    return-object v0
.end method

.method public a(Lcom/android/volley/q;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c:Lcom/android/volley/q;

    return-void
.end method

.method public a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 467
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 468
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->i()V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
