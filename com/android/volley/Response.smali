.class public Lcom/android/volley/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Response$ErrorListener;,
        Lcom/android/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/volley/Cache$Entry;

.field public final c:Lcom/android/volley/q;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/q;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/volley/Response;->d:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/volley/Response;->a:Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    .line 80
    iput-object p1, p0, Lcom/android/volley/Response;->c:Lcom/android/volley/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/volley/Response;->d:Z

    .line 72
    iput-object p1, p0, Lcom/android/volley/Response;->a:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/volley/Response;->c:Lcom/android/volley/q;

    return-void
.end method

.method public static a(Lcom/android/volley/q;)Lcom/android/volley/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/q;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0}, Lcom/android/volley/Response;-><init>(Lcom/android/volley/q;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/Response;-><init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/volley/Response;->c:Lcom/android/volley/q;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
