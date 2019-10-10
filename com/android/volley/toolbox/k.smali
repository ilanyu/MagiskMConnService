.class public Lcom/android/volley/toolbox/k;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x2

.field public static final c:F = 2.0f

.field private static final j:Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/android/volley/Response$Listener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Bitmap$Config;

.field private final g:I

.field private final h:I

.field private final i:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/k;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/k;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 10
    .param p7    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, p1, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/k;->d:Ljava/lang/Object;

    .line 83
    new-instance p1, Lcom/android/volley/d;

    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Lcom/android/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/n;)Lcom/android/volley/Request;

    .line 88
    iput-object p2, p0, Lcom/android/volley/toolbox/k;->e:Lcom/android/volley/Response$Listener;

    .line 89
    iput-object p6, p0, Lcom/android/volley/toolbox/k;->f:Landroid/graphics/Bitmap$Config;

    .line 90
    iput p3, p0, Lcom/android/volley/toolbox/k;->g:I

    .line 91
    iput p4, p0, Lcom/android/volley/toolbox/k;->h:I

    .line 92
    iput-object p5, p0, Lcom/android/volley/toolbox/k;->i:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static a(IIII)I
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 275
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_17

    move p2, p3

    goto :goto_c

    :cond_17
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return p2

    .line 146
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    if-nez p0, :cond_c

    return p2

    :cond_c
    return p0

    :cond_d
    if-nez p0, :cond_17

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_17
    if-nez p1, :cond_1a

    return p0

    :cond_1a
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 167
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2c

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_2b

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_2b
    return p0

    :cond_2c
    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_36

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_36
    return p0
.end method

.method private b(Lcom/android/volley/i;)Lcom/android/volley/Response;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p1, Lcom/android/volley/i;->b:[B

    .line 196
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 198
    iget v2, p0, Lcom/android/volley/toolbox/k;->g:I

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/android/volley/toolbox/k;->h:I

    if-nez v2, :cond_1a

    .line 199
    iget-object v2, p0, Lcom/android/volley/toolbox/k;->f:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 200
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5c

    :cond_1a
    const/4 v2, 0x1

    .line 203
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 204
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 205
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 206
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 209
    iget v6, p0, Lcom/android/volley/toolbox/k;->g:I

    iget v7, p0, Lcom/android/volley/toolbox/k;->h:I

    iget-object v8, p0, Lcom/android/volley/toolbox/k;->i:Landroid/widget/ImageView$ScaleType;

    .line 210
    invoke-static {v6, v7, v4, v5, v8}, Lcom/android/volley/toolbox/k;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 212
    iget v7, p0, Lcom/android/volley/toolbox/k;->h:I

    iget v8, p0, Lcom/android/volley/toolbox/k;->g:I

    iget-object v9, p0, Lcom/android/volley/toolbox/k;->i:Landroid/widget/ImageView$ScaleType;

    .line 213
    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/volley/toolbox/k;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 217
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 221
    invoke-static {v4, v5, v6, v7}, Lcom/android/volley/toolbox/k;->a(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 222
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_54

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_5c

    .line 228
    :cond_54
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_5c
    :goto_5c
    if-nez v0, :cond_68

    .line 236
    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p1}, Lcom/android/volley/k;-><init>(Lcom/android/volley/i;)V

    invoke-static {v0}, Lcom/android/volley/Response;->a(Lcom/android/volley/q;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 238
    :cond_68
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->a(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/android/volley/i;)Lcom/android/volley/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/android/volley/toolbox/k;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/k;->b(Lcom/android/volley/i;)Lcom/android/volley/Response;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p1

    goto :goto_30

    :catch_b
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    .line 187
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/android/volley/i;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lcom/android/volley/k;

    invoke-direct {p1, v1}, Lcom/android/volley/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/android/volley/Response;->a(Lcom/android/volley/q;)Lcom/android/volley/Response;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 190
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_9

    throw p1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/toolbox/k;->e:Lcom/android/volley/Response$Listener;

    .line 255
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 257
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 255
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/k;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public i()V
    .registers 3

    .line 244
    invoke-super {p0}, Lcom/android/volley/Request;->i()V

    .line 245
    iget-object v0, p0, Lcom/android/volley/toolbox/k;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 246
    :try_start_7
    iput-object v1, p0, Lcom/android/volley/toolbox/k;->e:Lcom/android/volley/Response$Listener;

    .line 247
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public v()Lcom/android/volley/Request$Priority;
    .registers 2

    .line 119
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
