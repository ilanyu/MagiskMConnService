.class public Lcom/android/volley/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/n;


# static fields
.field public static final a:I = 0x9c4

.field public static final b:I = 0x1

.field public static final c:F = 1.0f


# instance fields
.field private d:I

.field private e:I

.field private final f:I

.field private final g:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/d;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/volley/d;->d:I

    .line 56
    iput p2, p0, Lcom/android/volley/d;->f:I

    .line 57
    iput p3, p0, Lcom/android/volley/d;->g:F

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/volley/d;->d:I

    return v0
.end method

.method public a(Lcom/android/volley/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/q;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/android/volley/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/d;->e:I

    .line 85
    iget v0, p0, Lcom/android/volley/d;->d:I

    iget v1, p0, Lcom/android/volley/d;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/volley/d;->g:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/volley/d;->d:I

    .line 86
    invoke-virtual {p0}, Lcom/android/volley/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    .line 87
    :cond_1a
    throw p1
.end method

.method public b()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/volley/d;->e:I

    return v0
.end method

.method public c()F
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/volley/d;->g:F

    return v0
.end method

.method protected d()Z
    .registers 3

    .line 93
    iget v0, p0, Lcom/android/volley/d;->e:I

    iget v1, p0, Lcom/android/volley/d;->f:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
