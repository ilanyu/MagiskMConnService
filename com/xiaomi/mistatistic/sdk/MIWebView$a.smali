.class Lcom/xiaomi/mistatistic/sdk/MIWebView$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/MIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/MIWebView;

.field private b:Landroid/webkit/WebViewClient;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/MIWebView;Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->a:Lcom/xiaomi/mistatistic/sdk/MIWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->c:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 143
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_d

    .line 145
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_d

    .line 136
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_d
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_d

    .line 94
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    .line 78
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 79
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_d

    .line 81
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 83
    :goto_d
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2c

    .line 85
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v1, p2, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    :cond_2c
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 69
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_d

    .line 71
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 73
    :goto_d
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 119
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 122
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_d
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->c:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_30

    .line 127
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()Lcom/xiaomi/mistatistic/sdk/controller/h;

    move-result-object p3

    new-instance v6, Lcom/xiaomi/mistatistic/sdk/data/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    int-to-long v4, p2

    move-object v0, v6

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {p3, v6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Lcom/xiaomi/mistatistic/sdk/data/b;)V

    :cond_30
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 164
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 200
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_d

    .line 154
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_d
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 189
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_d

    .line 191
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :goto_d
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_d

    .line 112
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_d
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 180
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_d

    .line 182
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :goto_d
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 103
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 173
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/MIWebView$a;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 63
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
