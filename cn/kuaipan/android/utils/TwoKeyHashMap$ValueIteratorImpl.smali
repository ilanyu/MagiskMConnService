.class Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;
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
    name = "ValueIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

.field private b:Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/TwoKeyHashMap<",
            "TE;TK;TV;>.EntryIteratorImpl;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V
    .registers 3

    .line 541
    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;->a:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-direct {v0, p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;-><init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;->b:Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 555
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;->b:Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;->b:Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 551
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValueIteratorImpl;->b:Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntryIteratorImpl;->remove()V

    return-void
.end method
