.class public Lcom/android/volley/toolbox/o;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/android/volley/toolbox/ImageLoader;

.field private e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/o;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/android/volley/toolbox/o;->c:I

    return p0
.end method

.method private a()V
    .registers 2

    .line 192
    iget v0, p0, Lcom/android/volley/toolbox/o;->b:I

    if-eqz v0, :cond_a

    .line 193
    iget v0, p0, Lcom/android/volley/toolbox/o;->b:I

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/o;->setImageResource(I)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/o;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_e
    return-void
.end method

.method static synthetic b(Lcom/android/volley/toolbox/o;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/android/volley/toolbox/o;->b:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 70
    invoke-static {}, Lcom/android/volley/toolbox/t;->a()V

    .line 71
    iput-object p1, p0, Lcom/android/volley/toolbox/o;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/toolbox/ImageLoader;

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/o;->a(Z)V

    return-void
.end method

.method a(Z)V
    .registers 10

    .line 99
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getWidth()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getHeight()I

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 104
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    .line 105
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 106
    :goto_20
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    if-eqz v2, :cond_31

    if-eqz v5, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v3, :cond_39

    return-void

    .line 118
    :cond_39
    iget-object v3, p0, Lcom/android/volley/toolbox/o;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 119
    iget-object p1, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_4d

    .line 120
    iget-object p1, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a()V

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 123
    :cond_4d
    invoke-direct {p0}, Lcom/android/volley/toolbox/o;->a()V

    return-void

    .line 128
    :cond_51
    iget-object v3, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 129
    iget-object v3, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/volley/toolbox/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    return-void

    .line 134
    :cond_6c
    iget-object v3, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a()V

    .line 135
    invoke-direct {p0}, Lcom/android/volley/toolbox/o;->a()V

    :cond_74
    if-eqz v2, :cond_77

    const/4 v0, 0x0

    :cond_77
    if-eqz v5, :cond_7b

    const/4 v6, 0x0

    goto :goto_7c

    :cond_7b
    move v6, v1

    .line 147
    :goto_7c
    iget-object v2, p0, Lcom/android/volley/toolbox/o;->d:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/android/volley/toolbox/o;->a:Ljava/lang/String;

    new-instance v4, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/o;Z)V

    move v5, v0

    .line 148
    invoke-virtual/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 220
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 221
    invoke-virtual {p0}, Lcom/android/volley/toolbox/o;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_f

    .line 210
    iget-object v0, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a()V

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/o;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    iput-object v0, p0, Lcom/android/volley/toolbox/o;->e:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 215
    :cond_f
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 201
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/o;->a(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/android/volley/toolbox/o;->b:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/android/volley/toolbox/o;->c:I

    return-void
.end method
