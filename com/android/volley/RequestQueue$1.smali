.class Lcom/android/volley/RequestQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/RequestQueue;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/android/volley/RequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/android/volley/RequestQueue$1;->b:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/android/volley/RequestQueue$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/android/volley/Request;->b()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/volley/RequestQueue$1;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
