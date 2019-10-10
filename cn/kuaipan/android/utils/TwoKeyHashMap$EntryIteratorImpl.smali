.class Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private g:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V
    .registers 3

    .line 395
    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    .line 391
    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    .line 396
    invoke-static {p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->b(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result p1

    iput p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->b(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    iget v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->b:I

    if-ne v0, v1, :cond_24

    .line 421
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->c:Z

    .line 426
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    .line 427
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->g:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 428
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    return-object v0

    .line 422
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 419
    :cond_24
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 4

    .line 400
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 403
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eqz v0, :cond_10

    .line 404
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v0, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 406
    :cond_10
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-nez v0, :cond_48

    .line 407
    :goto_14
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_31

    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    aget-object v0, v0, v2

    if-nez v0, :cond_31

    goto :goto_14

    .line 410
    :cond_31
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_48

    .line 411
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->d:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 414
    :cond_48
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->f:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    iput-boolean v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->c:Z

    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 387
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 6

    .line 432
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    .line 436
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->b(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->b:I

    if-ne v0, v2, :cond_4e

    const/4 v0, 0x0

    .line 441
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v2}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    aget-object v2, v2, v3

    :goto_1a
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 442
    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->g:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-eq v0, v3, :cond_24

    .line 444
    iget-object v2, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_1a

    :cond_24
    if-eqz v2, :cond_2d

    .line 447
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->g:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v0, v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iput-object v0, v2, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    goto :goto_3b

    .line 449
    :cond_2d
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->c(Lcn/kuaipan/android/utils/TwoKeyHashMap;)[Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    iget v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    iget-object v3, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->g:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    iget-object v3, v3, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->e:Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    aput-object v3, v0, v2

    .line 451
    :goto_3b
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->d(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    .line 452
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->e(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    .line 453
    iget v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->b:I

    .line 454
    iput v1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->e:I

    return-void

    .line 437
    :cond_4e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 433
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
