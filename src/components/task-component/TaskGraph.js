import React, { Component } from 'react';
import CanvasJSReact from './canvasjs.react';
import axios from 'axios';
import PropTypes from "prop-types";
import {
    Card,
    CardHeader,
    ListGroup,
    ListGroupItem,
    Row,
    Col,
    Form,
    FormGroup,
    FormInput,
    FormSelect,
    FormTextarea,
    Button
} from "shards-react";

const TaskGraph = () => {

    var CanvasJS = CanvasJSReact.CanvasJS;
    var CanvasJSChart = CanvasJSReact.CanvasJSChart;

    const options = {
        animationEnabled: true,
        theme: "light2",
        title: {
            text: "Writers' Performance"
        },
        axisX: {
            title: "Orders/Task Status",
            reversed: true,
        },
        axisY: {
            title: "Performance",
            includeZero: true,
            // labelFormatter: this.addSymbols
        },
        data: [{
            type: "bar",
            dataPoints: [
                { y: 2200000000, label: "Completed" },
                { y: 1800000000, label: "Not Started" },
                { y: 800000000, label: "In Progress" },
                { y: 563000000, label: "On Hold" },
                { y: 376000000, label: "To Review" },
                { y: 336000000, label: "Overdue" }
            ]
        }]
    }

    return (
        <Card small className="mb-4">
            <div>
                <CanvasJSChart options={options}
                /* onRef={ref => this.chart = ref} */
                />
                {/*You can get reference to the chart instance as shown above using onRef. This allows you to access all chart properties and methods*/}
            </div>
        </Card>

    );
};

export default TaskGraph;