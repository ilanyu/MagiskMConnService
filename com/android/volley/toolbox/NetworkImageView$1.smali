.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/o;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/volley/toolbox/o;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/o;Z)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/q;)V
    .registers 3

    .line 153
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    invoke-static {p1}, Lcom/android/volley/toolbox/o;->a(Lcom/android/volley/toolbox/o;)I

    move-result p1

    if-eqz p1, :cond_13

    .line 154
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    invoke-static {v0}, Lcom/android/volley/toolbox/o;->a(Lcom/android/volley/toolbox/o;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/toolbox/o;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 4

    if-eqz p2, :cond_11

    .line 168
    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz p2, :cond_11

    .line 169
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Lcom/android/volley/toolbox/o;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 179
    :cond_11
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 180
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/o;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_34

    .line 181
    :cond_21
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    invoke-static {p1}, Lcom/android/volley/toolbox/o;->b(Lcom/android/volley/toolbox/o;)I

    move-result p1

    if-eqz p1, :cond_34

    .line 182
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/o;

    invoke-static {p2}, Lcom/android/volley/toolbox/o;->b(Lcom/android/volley/toolbox/o;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/o;->setImageResource(I)V

    :cond_34
    :goto_34
    return-void
.end method
