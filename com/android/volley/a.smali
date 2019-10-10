.class public Lcom/android/volley/a;
.super Lcom/android/volley/q;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/android/volley/q;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/volley/q;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/volley/a;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/i;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/volley/q;-><init>(Lcom/android/volley/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/volley/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/volley/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/volley/a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/volley/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 54
    :cond_7
    invoke-super {p0}, Lcom/android/volley/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
