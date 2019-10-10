.class Lcom/android/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->a(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    .line 100
    iput p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->a:I

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/volley/toolbox/ImageLoader$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/q;)V
    .registers 3

    .line 103
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->a:I

    if-eqz p1, :cond_b

    .line 104
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 3

    .line 110
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 111
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1b

    .line 112
    :cond_10
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->c:I

    if-eqz p1, :cond_1b

    .line 113
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->b:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1b
    :goto_1b
    return-void
.end method
