.class public Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/ImageLoader;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 6

    .line 361
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Landroid/graphics/Bitmap;

    .line 363
    iput-object p3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    .line 365
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 375
    invoke-static {}, Lcom/android/volley/toolbox/t;->a()V

    .line 377
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_8

    return-void

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2a

    .line 383
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 385
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 389
    :cond_2a
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_52

    .line 391
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 392
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_52

    .line 393
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    :goto_52
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Ljava/lang/String;

    return-object v0
.end method
