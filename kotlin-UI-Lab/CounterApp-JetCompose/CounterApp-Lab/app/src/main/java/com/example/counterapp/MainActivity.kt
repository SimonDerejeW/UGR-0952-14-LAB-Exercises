package com.example.counterapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.counterapp.ui.theme.CounterAppTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Counter()
        }
    }
}

@Composable
fun Counter(){
    var numberVal by remember { mutableIntStateOf(0) }

    Column (
        modifier = Modifier.fillMaxWidth().fillMaxHeight(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ){
        Text(
            text = "$numberVal",
            style = MaterialTheme.typography.bodyLarge,
            fontSize = 24.sp
        )
        Row {
            Surface(shape = MaterialTheme.shapes.large, shadowElevation = 1.5.dp, color = MaterialTheme.colorScheme.secondary, modifier = Modifier
                .padding(10.dp)){
                Text(
                    text = "+",
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(start = 15.dp, top = 8.dp, bottom = 8.dp, end = 15.dp).clickable { numberVal += 1 },
                )
            }
            Spacer(modifier = Modifier.width(5.dp))

            Surface(shape = MaterialTheme.shapes.large, shadowElevation = 1.5.dp, color = MaterialTheme.colorScheme.secondary, modifier = Modifier
                .padding(10.dp)){
                Text(
                    text = "-",
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(start = 15.dp, top = 8.dp, bottom = 8.dp, end = 15.dp).clickable { numberVal -= 1 },
                )
            }
        }
        Surface(shape = MaterialTheme.shapes.large, shadowElevation = 1.5.dp, color = MaterialTheme.colorScheme.secondary, modifier = Modifier
            .padding(5.dp)){
            Text(
                text = "Reset",
                style = MaterialTheme.typography.bodyMedium,
                modifier = Modifier.padding(start = 15.dp, top = 8.dp, bottom = 8.dp, end = 15.dp).clickable { numberVal = 0 },
            )
        }
    }
}